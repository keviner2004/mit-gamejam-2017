local lfs = require "lfs"
local sfx = {}

sfx.soundOn = true

sfx.CHANNEL_BG = 1
sfx.CHANNEL_UI = 2
sfx.CHANNEL_CH1_LASER = 3

sfx.history = {
  
}

sfx.channel = {
  
}

sfx.bg1 = {
  handle = audio.loadStream( "sounds/bg1.mp3" ),
  channel = sfx.CHANNEL_BG
}

sfx.bg2 = {
  handle = audio.loadStream( "sounds/bg2.mp3" ),
  channel = sfx.CHANNEL_BG
}

function sfx:initReservedChannelVolumn()
  --local masterVolume = audio.getVolume()
  --print( "volume "..masterVolume )
  audio.setVolume( 0.7, { channel = self.CHANNEL_BG } )  --music track
  audio.setVolume( 0.8, { channel = self.CHANNEL_UI } )  --ui
  audio.setVolume( 0.8, { channel = self.CHANNEL_CH1_LASER } )
  --audio.setVolume( 0.8,  { channel = 3 } )  --Lesser
end

function sfx:init()
  audio.reserveChannels(3)
  self:initReservedChannelVolumn()
end

function sfx:play(name, options)
    --prevent too close same sounds
    local plySoundTime = system.getTimer()
    local skip = false
    --print("Check!!!! ", sfx.history[name], name)
    if sfx.history[name] then
      --print("Check2!!!! ", sfx.history[name], name)
      local diff = plySoundTime - sfx.history[name]
      if diff < 10 then
        skip = true
      end
    end
    --print("Assign!!!! ", plySoundTime, name)
    sfx.history[name] = plySoundTime
    if skip then
      return
    end

    --

    if not sfx.soundOn then
      return
    end
    self:initReservedChannelVolumn()

    if not options then
      options = {}
    end

    local reservedChannel = self[name].channel

    if reservedChannel and reservedChannel ~= 0 then
      audio.stop(reservedChannel)
      options.channel = reservedChannel
    else
      local availableChannel = audio.findFreeChannel( 4 )
      if availableChannel == 0 then
        logger:warn(TAG, "No available channels")
        return
      end
      audio.setVolume( 1, { channel=availableChannel } )
      options.channel = availableChannel
    end

    local currentVolumn = audio.getVolume( { channel = options.channel } )

    --logger:info(TAG, "Play sound %s at channel %d with volume %f at %d", name, options.channel, currentVolumn, system.getTimer())
    --logger:info(TAG, "Play sound at bg channel %d with volume %f", self.CHANNEL_BG, audio.getVolume( { channel = self.CHANNEL_BG } ))
    sfx.channel[options.channel] = name
    return audio.play(self[name].handle, options)

end

function sfx:fadeOut(channel, time)
  audio.fadeOut(channel, time)
end

function sfx:stop(channel)
    if not channel then
      audio.stop()
    else
      audio.stop(channel)
    end
    sfx.channel[sfx.CHANNEL_BG] = nil
end

function sfx:pause(channel)
  audio.pause(channel)
end

function sfx:resume(channel)
  audio.resume(channel)
end

sfx:init()

return sfx

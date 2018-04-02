local script = libs.script;


-- Documentation
-- http://www.unifiedremote.com/api

-- Script Library
-- http://www.unifiedremote.com/api/libs/script


--@help Volume Up
actions.vol_up = function ()
	script.shell("sh -c \"pactl set-sink-mute 0 false ; pactl set-sink-volume 0 +5%\"");
end


--@help Volume Down
actions.vol_down = function ()
	script.shell("sh -c \"pactl set-sink-mute 0 false ; pactl set-sink-volume 0 -5%\"");
end


--@help Volume Mute/Unmute
actions.vol_mute = function ()
	script.shell("pactl set-sink-mute 0 toggle");
end


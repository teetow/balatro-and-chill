Mod = {}
Mod.NAME = "MusicMod"
function loadMod()
	local lovely = require("lovely")
	local nativefs = require("nativefs")
	assert(load(nativefs.read(lovely.mod_dir .. "/" .. Mod.NAME .. "/main.lua")))()
end



function initSoundManager()
	local lovely = require("lovely")
	local nativefs = require("nativefs")
	local full_path = lovely.mod_dir .. "/".. Mod.NAME .. "/sound_manager.lua"
  local file_data = assert(nativefs.newFileData(full_path), ("Failed to collect file data for sound_manager"))
	SOUND_MANAGER = {
		thread = love.thread.newThread(file_data),
		channel = love.thread.getChannel("sound_request"),
		load_channel = love.thread.getChannel("load_channel"),
	}
  Mod.DIR = lovely.mod_dir
	SOUND_MANAGER.thread:start(Mod)
	return SOUND_MANAGER
end

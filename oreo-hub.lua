-- 🧠 Universal Oreo Hub | @udswift & @fenixscripts
local scripts = {
    [96342491571673] = "https://raw.githubusercontent.com/robloxscripts10/speed-OREOSCRIPTS/refs/heads/main/fixedspeed.lua",  -- Example: Murder Mystery 2
    [109983668079237] = "https://raw.githubusercontent.com/robloxscripts10/speed-OREOSCRIPTS/refs/heads/main/fixedspeed.lua", -- Example: Da Hood
    [189707] = "https://pastebin.com/raw/yourScript3",     -- Example: Natural Disaster Survival
}

local currentPlaceId = game.PlaceId

if scripts[currentPlaceId] then
    local success, err = pcall(function()
        loadstring(game:HttpGet(scripts[currentPlaceId]))()
    end)
    if not success then
        warn("Failed to load script for this game:", err)
    end
else
    warn("No script found for this game. PlaceId:", currentPlaceId)
end

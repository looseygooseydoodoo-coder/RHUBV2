repeat task.wait() until game:IsLoaded()

-- Utility functions
local function getGameId()
	local g = game.GameId
	if g == 7436755782 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/GrowAGarden.lua" -- Grow a Garden
	elseif g == 7018190066 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/DeadRails.lua" -- Dead Rails
	elseif g == 5750914919 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/Fisch.lua" -- Fisch
	elseif g == 6325068386 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/BlueLockRivals.lua" -- Blue Lock Rivals
	elseif g == 4777817887 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/BladeBall.lua" -- Blade Ball
	elseif g == 994732206 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/BloxFruit.lua" -- Blox Fruit
	elseif g == 4658598196 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/AOTRevolution.lua" -- Attack On Titan Revolution
	elseif g == 6331902150 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/Forsaken.lua" -- Forsaken
	elseif g == 7709344486 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/StealABrainrot.lua" -- Steal a Brainrot
	elseif g == 6701277882 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/FishIt.lua" -- Fish It
	elseif g == 7326934954 then return "https://raw.githubusercontent.com/YourUser/YourRepo/main/99Nights.lua" -- 99 Night in The Forest
	end
end

local function getGameName()
	local g = game.GameId
	if g == 5750914919 then return "Fisch"
	elseif g == 7018190066 then return "Dead Rails"
	elseif g == 6325068386 then return "Blue Lock Rivals"
	elseif g == 4777817887 then return "Blade Ball"
	elseif g == 7436755782 then return "Grow a Garden"
	elseif g == 994732206 then return "Blox Fruit"
	elseif g == 4658598196 then return "Attack On Titan Revolution"
	elseif g == 6331902150 then return "Forsaken"
	elseif g == 7709344486 then return "Steal a Brainrot"
	elseif g == 6701277882 then return "Fish It"
	elseif g == 7326934954 then return "99 Night in The Forest"
	end
end

local function loadUrl(url)
	local game_url = game:HttpGet(url)
	return loadstring(game_url)()
end

-- Main
local script_url, game_name = getGameId(), getGameName()

if script_url then
	game.StarterGui:SetCore("SendNotification", {
		Title = "NatHub Loaded!",
		Text = game_name .. " Script Loaded!",
		Icon = "rbxassetid://99764942615873",
		Duration = 5
	})

	-- Directly load the script, no key system
	loadUrl(script_url)
end

local customizeToken = 58061
local raceChangeToken = 58062
local factionChangeToken = 58063

local function CustomizeMe(event, player, item, target)
	if (player:HasItem(customizeToken) == true) then
		player:RemoveItem(customizeToken, 1)
		player:SetAtLoginFlag(8)
		player:SendBroadcastMessage("Please return to the character select screen to continue the customization process.")		
	end
end

local function ChangeRace(event, player, item, target)
	if (player:HasItem(raceChangeToken) == true) then
		player:RemoveItem(raceChangeToken, 1)
		player:SetAtLoginFlag(128)
		player:SendBroadcastMessage("Please return to the character select screen to change your race.")		
	end
end

local function FactionChange(event, player, item, target)
	if (player:HasItem(factionChangeToken) == true) then
			player:RemoveItem(factionChangeToken, 1)
			player:SetAtLoginFlag(64)
			player:SendBroadcastMessage("Please return to the character select screen to change your faction.")		
		end
end

RegisterItemEvent(customizeToken, 2, CustomizeMe)
RegisterItemEvent(raceChangeToken, 2, ChangeRace)
RegisterItemEvent(factionChangeToken, 2, FactionChange)
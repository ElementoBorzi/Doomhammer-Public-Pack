local creature_cmd = "forge creature"
local item_cd = "forge item"
local repair_cmd = "repair"
local walktome_cmd = "npc walk here"
local runtome_cmd = "npc run here"
local faceme_cmd = "npc face here"
local castOnTarget_cmd = "npc cast target"
local npcIdentify_cmd = "npc identify"

local moveError = "Failed. Requires a target."

local function OnCreatureCommand(event, player, command)

	if command == creature_cmd then
		player:SendBroadcastMessage("Forge Creature")
		return false
	end
	
	
	return true
end

local function OnItemCommand(event, player, command)
	if command == item_cd then
		player:SendBroadcastMessage("Forge Item")
		return false
	end
	
	return true
end

local function OnRepairCommand(event, player, command)
	if command == repair_cmd and player:GetGMRank() >= 1 then
		player:SendBroadcastMessage("Items repaired!")
		player:DurabilityRepairAll(false)
		return false
	end
	
	return true
end

local function walkToMeCommand(event, player, command)
	if player then
	local target = player:GetSelection()
	
		if target then
			if command == runtome_cmd and player:GetGMRank() >= 1 then
			target:SetWalk(false)
			target:MoveTo(0, player:GetX(), player:GetY(), player:GetZ(), false)
			return false
			end
		else
		if command == runtome_cmd and player:GetGMRank() >= 1 then
		player:SendBroadcastMessage(moveError)
		end
		
		end
		
		
	else
	end
	return true
end

local function runToMeCommand(event, player, command)
	if player then
	local target = player:GetSelection()
	
		if target then
			if command == walktome_cmd and player:GetGMRank() >= 1 then
			target:SetWalk(true)
			target:MoveTo(0, player:GetX(), player:GetY(), player:GetZ(), false)
			return false
			end
		else
		if command == walktome_cmd and player:GetGMRank() >= 1 then
		player:SendBroadcastMessage(moveError)
		end
		
		end
		
		
	else
	end
	return true
end

local function faceMeCommand(event, player, command)
	if player then
	local target = player:GetSelection()
	
		if target then
			if command == faceme_cmd and player:GetGMRank() >= 1 then
			target:SetFacingToObject(player)
			return false
			end
		else
		if command == faceme_cmd and player:GetGMRank() >= 1 then
		player:SendBroadcastMessage(moveError)
		end
		
		end
	else
	end
		
		return true
end

local function castOnTargetCommand(event, player, command)
	if player then
	local target = player:GetSelection()
	
	if string.match(command, castOnTarget_cmd) and player:GetGMRank() >= 1 then
		local args = {}
		
		for str in string.gmatch(command, "%S+") do
			if string.match(str, "npc") or string.match(str, "cast") or string.match(str, "target") then
			
			else
			table.insert(args, str)
			end
		end
		if args then
			local spell_arg = args[1]
			local crea_arg = args[2]
			
		player:SendBroadcastMessage(args[1])
		player:SendBroadcastMessage(args[2])
		end
		target:CastSpell(args[2], args[1], false)

	else

	end
	local args = {}
	else
	end
	
	
	return true
end

local function npcIdentifyCommand(event, player, command)
	
	
	if command == npcIdentify_cmd then
	local target = player:GetSelection()
	if target then
	
	local TargetDisplay = target:GetDisplayId()
	local TargetEntry = target:GetEntry()
	local TargetGUID = target:GetGUIDLow()
	
	player:SendBroadcastMessage("---------")
	player:SendBroadcastMessage("Name: " ..target:GetName().." ")
	player:SendBroadcastMessage("---------")
	player:SendBroadcastMessage("Entry ID: " ..TargetEntry.." ")
	player:SendBroadcastMessage("Appearance/Display ID: " ..TargetDisplay.." ")
	player:SendBroadcastMessage("GUID: "..tostring(TargetGUID))
	player:SendBroadcastMessage("---------")
	
	return false
	else
	player:SendBroadcastMessage(moveError)
	end

	end

	return true
end

RegisterPlayerEvent(42, OnCreatureCommand)
RegisterPlayerEvent(42, OnItemCommand)
RegisterPlayerEvent(42, OnRepairCommand)
RegisterPlayerEvent(42, walkToMeCommand)
RegisterPlayerEvent(42, runToMeCommand)
RegisterPlayerEvent(42, faceMeCommand)
RegisterPlayerEvent(42, castOnTargetCommand)
RegisterPlayerEvent(42, npcIdentifyCommand)

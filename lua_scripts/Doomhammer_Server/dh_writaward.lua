local writ_item = 58009
local low_value = 30
local high_value = 180

local PLAYER_FLAGS_NO_XP_GAIN = 0x02000000
local PLAYER_FLAGS = 150

local function CheckForChars(str, charTable)

end

local charTable = {"A", "B", "C"}

local function OnChat(player)
	local playerGUID = player:GetGUIDLow()
	local playerResult = CharDBQuery("SELECT * FROM `dh_writ_awards` WHERE `guid` = "..playerGUID..";")
	
--	if type == 1 then
		if not playerResult then
			local mathRandom = math.random(low_value, high_value)
		
			CharDBExecute("INSERT INTO `dh_writ_awards` VALUES ("..playerGUID..", "..mathRandom..", 1);")
		else
			CharDBExecute("UPDATE `dh_writ_awards` SET `total` = (`total` + 2) WHERE `guid` = "..playerGUID..";")
			
			local playerTotal = CharDBQuery("SELECT `total` FROM `dh_writ_awards` WHERE `guid` = "..playerGUID..";"):GetInt32(0)
			local playerMarker = CharDBQuery("SELECT `marker` FROM `dh_writ_awards` WHERE `guid` = "..playerGUID..";"):GetInt32(0)
	
			if playerTotal >= playerMarker then
			player:AddItem(58009)
			local mathRandom = math.random(low_value, high_value)
			CharDBExecute("UPDATE `dh_writ_awards` SET `marker` = "..mathRandom.." WHERE `guid` = "..playerGUID..";")
			CharDBExecute("UPDATE `dh_writ_awards` SET `total` = 0 WHERE `guid` = "..playerGUID..";")
			if not player:HasFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN) then
				player:GiveXP((150 * player:GetLevel() / 2.5 * 2))
			end
			end
--		end
		
--		if (CharDBQuery("SELECT `total` FROM `dh_writ_awards` WHERE `guid" = ", "..playerGUID..";"):GetInt32(1)) == (CharDBQuery("SELECT `marker` FROM `dh_writ_awards` WHERE `guid" = ", "..playerGUID..";"):GetInt32(1)) then
--		end
	end
	
end

local function OnChatSay(event, player, message, type, language)
	
	if type == 1 or type == 10 then
		if #message >= 7 then
			if #player:GetPlayersInRange(200) >= 1 then
				OnChat(player)
			end
		end
		
	end
end

local function OnCharacterDelete(event, guid)
	CharDBExecute("DELETE FROM `dh_writ_awards` WHERE `guid` = "..guid.."")
end

RegisterPlayerEvent(18, OnChatSay)
RegisterPlayerEvent(2, OnCharacterDelete)
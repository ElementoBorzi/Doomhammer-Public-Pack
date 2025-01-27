--[[
Copyright (C) 2014-  Rochet2 <https://github.com/Rochet2>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
]]

--[[
This file is a server file. It is loaded on server side and handles all server side code.
This file should be placed somewhere in the lua_scripts folder so Eluna can load it.
You can of course design your own addons and codes in some other way.

Few tips:
On server side the code size does not matter, however safety does!
On client side safety is not needed, but server safety will avoid nasty behavior and errors.
The client may send ANY data. Be cautious and make sure the data you receive is indeed the type you
expect it to be.

Message compression and obfuscation should be turned on in AIO.lua files on server
and client. If you want to debug your code and need to see the correct line numbers
on error messages, disable obfuscation.

After getting some base understanding of how things work, it is suggested to read all the AIO files.
They contain a lot of new functions and information and everything has comments about what it does.
]]


-- Note that getting AIO is done like this since AIO is defined on client
-- side by default when running addons and on server side it may need to be
-- required depending on the load order. On server only files the require
-- would be enough, but lets just keep it like this for the sake of consistency
local AIO = AIO or require("AIO")

-- AIO.AddHandlers adds a new table of functions as handlers for a name and returns the table.
-- This is used to add functions for a specific "channel name" that trigger on specific messages.
-- At this point the table is empty, but MyHandlers table will be filled soon.
local MyHandlers = AIO.AddHandlers("AIONagaOrb", {})
local OgreHandlers = AIO.AddHandlers("AIOOgreOrb", {})
local SatyrHandlers = AIO.AddHandlers("AIOSatyrOrb", {})
local UndeadHandlers = AIO.AddHandlers("AIOUndeadOrb", {})
local WritRaceHandlers = AIO.AddHandlers("WritRaces", {})
-- You can also call this after filling the table. like so:
--  local MyHandlers = {}; ..fill MyHandlers table.. AIO.AddHandlers("AIOExample", MyHandlers)

-- An example handler.
-- This prints all the values the client sends with the command
--  AIO.Handle("AIOExample", "print")


local naga_orb2 = {}
local ogre_orb2 = {}
local satyr_orb2 = {}
local furbolg_orb2 = {}
local undead_orb2 = {}

naga_orb2[1] = 58057
naga_orb2[2] = 8
naga_orb2[3] = 9

ogre_orb2[1] = 58060
ogre_orb2[2] = 1
ogre_orb2[3] = 2
ogre_orb2[4] = 3

satyr_orb2[1] = 58058
satyr_orb2[2] = 11

furbolg_orb2[1] = 58129
furbolg_orb2[2] = 10

undead_orb2[1] = 58059
undead_orb2[2] = 4
undead_orb2[3] = 5
undead_orb2[4] = 6
undead_orb2[5] = 7

function WritRaceHandlers.PassToSQL(player, playermorph)
		
	local playerResult = CharDBQuery("SELECT * FROM acore_characters.character_morph WHERE `guid` = "..player:GetGUIDLow()..";")

	player:SetDisplayId(playermorph)
	
	if not playerResult then
	CharDBExecute("INSERT INTO acore_characters.character_morph VALUES ("..player:GetGUIDLow()..", "..playermorph..");")
	else
	CharDBExecute("UPDATE acore_characters.character_morph SET `displayid` = "..playermorph.." WHERE `guid` = "..player:GetGUIDLow().."")
	end
	
end

function WritRaceHandlers.Transform(player, playermorph, ...)
	local playerGUID = player:GetGUIDLow()
		
	local playerResult = CharDBQuery("SELECT * FROM acore_characters.character_morph WHERE `guid` = "..player:GetGUIDLow()..";")

	player:SetDisplayId(playermorph)
	
	if not playerResult then
	CharDBExecute("INSERT INTO acore_characters.character_morph VALUES ("..playerGUID..", "..playermorph..");")
	else
	CharDBExecute("UPDATE acore_characters.character_morph SET `displayid` = "..playermorph.." WHERE `guid` = "..playerGUID.."")
	end
end

function WritRaceHandlers.Reset(player, ...)
	local playerResult = CharDBQuery("SELECT * FROM acore_characters.character_morph WHERE `guid` = "..player:GetGUIDLow()..";")
	
	if playerResult then
		player:DeMorph()
		CharDBExecute("DELETE FROM acore_characters.character_morph WHERE `guid` = "..player:GetGUIDLow()..";")
	end
end

-- keep down bloating
local function OnCharacterDelete(event, guid)
	CharDBExecute("DELETE FROM acore_characters.character_morph WHERE `guid` = "..guid..";")
end

local function MorphCharacterLogin(event, player)
	local playerGUID = player:GetGUIDLow()
	local playerResult = CharDBQuery("SELECT * FROM acore_characters.character_morph WHERE `guid` = "..playerGUID..";")
	
	if playerResult then
		local playerDisplayID = CharDBQuery("SELECT `displayid` FROM acore_characters.character_morph WHERE `guid` = "..playerGUID..";"):GetInt32(0)
		
		player:SetDisplayId(playerDisplayID)
	end
end

local function OnAreaUpdate(event, player, oldArea, newArea)
	local playerGUID = player:GetGUIDLow()
	local playerResult = CharDBQuery("SELECT * FROM acore_characters.character_morph WHERE `guid` = "..playerGUID..";")
	
	if playerResult then
		local playerDisplayID = CharDBQuery("SELECT `displayid` FROM acore_characters.character_morph WHERE `guid` = "..playerGUID..";"):GetInt32(0)
		
		player:SetDisplayId(playerDisplayID)
	end
end

local function reassertMorph(event, delay, pCall, player)
	local playerGUID = player:GetGUIDLow()
	local playerResult = CharDBQuery("SELECT `displayid` FROM acore_characters.character_morph WHERE `guid` = "..playerGUID..";"):GetInt32(0)
	
	if playerResult and morphSet == 0 then
		
		player:SetDisplayId(playerResult)
		
	end
end
-- fix
local function OnHitBySpell_p(event, player, spell, skipCheck)
	
	if spell:GetEntry() == 118 or spell:GetEntry() == 12824 or spell:GetEntry() == 12825 or spell:GetEntry() == 12826 and spell:GetTarget():IsPlayer() then
		local Target = spell:GetTarget()
		local TargetAura = Target:GetAura(spell:GetEntry())
		spell:GetTarget():RegisterEvent(reassertMorph, 500, 20)
	end

	
end

-- persists through polymorph

-- wip



function CreateMorphCache(player, item, passedTable)
	LoadedMorphs = {}
	local number = #passedTable
	
	for i=1, #passedTable do
	
		if i > 1 then
		local Query = WorldDBQuery("SELECT * FROM acore_world.dh_morph_list WHERE `Type` = "..passedTable[i]..";")
		
			if Query then
			repeat
			--	table.insert(LoadedMorphs, {Query:GetUInt32(0), Query:GetUInt32(1), Query:GetUInt32(2), Query:GetString(3), Query:GetString(4)})
			table.insert(LoadedMorphs, {Query:GetUInt32(0), Query:GetUInt32(1), Query:GetUInt32(2), Query:GetString(3), Query:GetString(4), Query:GetFloat(5), Query:GetFloat(6), Query:GetFloat(7), Query:GetFloat(8)})
			until not Query:NextRow()
			end
			
		end
		
	if i == #passedTable then
	AIO.Handle(player, "WritRaces", "ButtonGen", LoadedMorphs)
	AIO.Handle(player, "WritRaces", "ShowFrame", LoadedMorphs)
	end
		
	end
	

end

function WritRaceHandlers.RetrieveTable_Frame(player, listid, direction)

	AIO.Handle(player, "WritRaces", "ModifyList", listid, LoadedMorphs, direction)

end

local function AIO_OnItemUseNaga(event, player, item, target)
    if item:GetEntry() == naga_orb2[1] then
        CreateMorphCache(player, item, naga_orb2)
		AIO.Handle(player, "WritRaces", "SetBackground", "MorphFrame_Naga")
    end

end

local function AIO_OnItemUseOgre(event, player, item, target)
	if item:GetEntry() == ogre_orb2[1] then
		CreateMorphCache(player, item, ogre_orb2)
		AIO.Handle(player, "WritRaces", "SetBackground", "MorphFrame_Ogre")
	end
end


local function AIO_OnItemUseSatyr(event, player, item, target)
	if item:GetEntry() == satyr_orb2[1] then
		CreateMorphCache(player, item, satyr_orb2)
		AIO.Handle(player, "WritRaces", "SetBackground", "MorphFrame_Satyr")
	end
end

local function AIO_OnItemUseUndead(event, player, item, target)
	if item:GetEntry() == undead_orb2[1] then
		CreateMorphCache(player, item, undead_orb2)
		AIO.Handle(player, "WritRaces", "SetBackground", "morphframe_undead")
	end
end

local function AIO_OnItemUseFurbolg(event, player, item, target)
	if item:GetEntry() == furbolg_orb2[1] then
		CreateMorphCache(player, item, furbolg_orb2)
		AIO.Handle(player, "WritRaces", "SetBackground", "MorphFrame_Furbolg")
	end
end

--
--
--



RegisterItemEvent(naga_orb2[1], 2, AIO_OnItemUseNaga)
RegisterItemEvent(ogre_orb2[1], 2, AIO_OnItemUseOgre)
RegisterItemEvent(satyr_orb2[1], 2, AIO_OnItemUseSatyr)
RegisterItemEvent(undead_orb2[1], 2, AIO_OnItemUseUndead)
RegisterItemEvent(furbolg_orb2[1], 2, AIO_OnItemUseFurbolg)
RegisterPlayerEvent(2, OnCharacterDelete)
RegisterPlayerEvent(3, MorphCharacterLogin)
RegisterPlayerEvent(47, OnAreaUpdate)
RegisterPlayerEvent(5, OnHitBySpell_p)
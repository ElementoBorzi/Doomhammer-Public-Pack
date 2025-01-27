local AIO = AIO or require("AIO") and ("contentcreator_frame")

local ContentCreatorHandlers = AIO.AddHandlers("AIO_CC", {})

local function Login_WritCheck(event, player)
	
	
	local passingfactable = WorldDBQuery("SELECT * FROM acore_world.dh_creature_factions;")
	local passingfac_table = {}

	if(passingfactable) then
		repeat
			
			table.insert(passingfac_table, {passingfactable:GetUInt32(0), passingfactable:GetUInt32(1), passingfactable:GetString(2), passingfactable:GetFloat(3)})

		until not passingfactable:NextRow()
		else
	
		end

	if passingfactable then
	AIO.Handle(player, "AIO_CC", "UpdateFacTable", passingfac_table)
	else
	return false
	end
	
end

function ContentCreatorHandlers.UpdateConfirmText(player)
	local query = CharDBQuery("SELECT * FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId().."")
	local storagetable = {}

	if not query then
		CharDBExecute("INSERT INTO acore_characters.dh_account_writstorage VALUES ("..player:GetAccountId()..", 0, 0, 0);")
		query = CharDBQuery("SELECT * FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId().."")
	end
	
	if(query) then
		repeat
			
			table.insert(storagetable, {query:GetUInt32(0), query:GetUInt32(1), query:GetUInt32(2), query:GetUInt32(3)})
		until not query:NextRow()
		else
	
		end

	if query then
	AIO.Handle(player, "AIO_CC", "SwitchText", storagetable)
	else
	
	return false
	end

end


function CreatureSubmit(player, SubmissionCache, SubmissionType)
	player:SendBroadcastMessage("Creature received by server...")
	TotalFlags = 0
	ClassFlags = 0
	RaceFlags = 0
	ExtraFlags = 0

		local Entry = WorldDBQuery("SELECT MAX(`entry`) FROM acore_world.creature_template;"):GetInt32(0)
		local Entry2 = WorldDBQuery("SELECT MAX(`entry`) FROM acore_world.dh_creature_template;"):GetInt32(0)
		
		if Entry2 >= Entry then
		Entry = Entry + (Entry2 - Entry)
		
		end

		if SubmissionCache[8] then
		TotalFlags = TotalFlags + 128
		end
		
		if SubmissionCache[9] then
		TotalFlags = TotalFlags + 1
		end
		
		if SubmissionCache[10] then
		TotalFlags = TotalFlags + 2
		end
		
		if SubmissionCache[2] == "0" then
		player:SendBroadcastMessage("Submission failed! Requires a name!")
		else
		player:SendBroadcastMessage("Creature successfully received by database. You will be informed if your creation is approved.")
			WorldDBExecute("INSERT INTO acore_world.dh_creature_template VALUES ("..(Entry + 1)..", '"..SubmissionCache[2].."', '"..SubmissionCache[3].."', "..SubmissionCache[6]..", "..SubmissionCache[6]..", "..SubmissionCache[4]..", "..SubmissionCache[7]..", "..SubmissionCache[5]..", "..TotalFlags..", "..SubmissionCache[11]..", "..SubmissionCache[12]..", "..SubmissionCache[13]..", "..SubmissionCache[14]..", "..SubmissionCache[15]..", "..SubmissionCache[16]..", "..SubmissionCache[17]..", '"..SubmissionCache[26].."', "..SubmissionCache[21]..", "..SubmissionCache[18]..", "..SubmissionCache[19]..", "..SubmissionCache[20]..");")
			WorldDBExecute("INSERT INTO acore_world.dh_ownership_tracker VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..SubmissionType..", "..Entry..");")
		end
		if SubmissionCache[25] ~= 0 then
			WorldDBExecute("INSERT INTO acore_world.dh_gossip_template VALUES ("..(Entry + 1)..", '"..SubmissionCache[25].."');")
		end
	
end


function QuestSubmit(player, SubmissionCache, SubmissionType)
	player:SendBroadcastMessage("Quest received by server...")
		local Entry = WorldDBQuery("SELECT MAX(`ID`) FROM acore_world.quest_template;"):GetInt32(0)
		local Entry2 = WorldDBQuery("SELECT MAX(`entry`) FROM acore_world.dh_quest_template;"):GetInt32(0)
		TotalFlags = 0
		ClassFlags = 0
		RaceFlags = 0
		ExtraFlags = 0
	
		
		if Entry2 >= Entry then
		Entry = (Entry + (Entry2 - Entry)) + 1
		end
		
		if SubmissionCache[33] then
		RaceFlags = RaceFlags + 1
		end
		
		if SubmissionCache[34] then
		RaceFlags = RaceFlags + 2
		end
		
		if SubmissionCache[35] then
		RaceFlags = RaceFlags + 4
		end
		
		if SubmissionCache[36] then
		RaceFlags = RaceFlags + 8
		end
		
		if SubmissionCache[37] then
		RaceFlags = RaceFlags + 16
		end
		
		if SubmissionCache[38] then
		RaceFlags = RaceFlags + 32
		end
		
		if SubmissionCache[39] then
		RaceFlags = RaceFlags + 64
		end
		
		if SubmissionCache[40] then
		RaceFlags = RaceFlags + 32
		end
		
		if SubmissionCache[41] then
		RaceFlags = RaceFlags + 512
		end
		
		if SubmissionCache[42] then
		RaceFlags = RaceFlags + 1024
		end
		
		--
		
		if SubmissionCache[46] then
		ClassFlags = ClassFlags + 1
		end
		
		if SubmissionCache[47] then
		ClassFlags = ClassFlags + 2
		end
		
		if SubmissionCache[48] then
		ClassFlags = ClassFlags + 4
		end
		
		if SubmissionCache[49] then
		ClassFlags = ClassFlags + 8
		end
		
		if SubmissionCache[50] then
		ClassFlags = ClassFlags + 16
		end
		
		if SubmissionCache[51] then
		ClassFlags = ClassFlags + 64
		end
		
		if SubmissionCache[52] then
		ClassFlags = ClassFlags + 128
		end
		
		if SubmissionCache[53] then
		ClassFlags = ClassFlags + 256
		end
		
		if SubmissionCache[54] then
		ClassFlags = ClassFlags + 1024
		end
		
		if SubmissionCache[12] then
		TotalFlags = TotalFlags + 1
		end
		
		if SubmissionCache[13] then
		TotalFlags = TotalFlags + 8
		end
		
		if SubmissionCache[14] then
		TotalFlags = TotalFlags + 4096
		end
		
		if SubmissionCache[2] == "0" then
		player:SendBroadcastMessage("Submission failed! Requires a name!")
		else

		player:SendBroadcastMessage("Quest successfully received by database. You will be informed if your creation is approved.")
			WorldDBExecute("INSERT INTO acore_world.dh_quest_template VALUES ("..Entry..", "..SubmissionCache[6]..", "..SubmissionCache[7]..", "..(SubmissionCache[15] + 3)..", "..SubmissionCache[15]..", 2, "..SubmissionCache[8]..", "..SubmissionCache[9]..", "..SubmissionCache[10]..", "..SubmissionCache[11]..", "..SubmissionCache[18]..", 4, "..(145 * SubmissionCache[15])..", "..SubmissionCache[17]..", "..SubmissionCache[19]..", "..SubmissionCache[20]..", "..SubmissionCache[22]..", "..SubmissionCache[23]..", "..SubmissionCache[24]..", "..SubmissionCache[25]..", "..SubmissionCache[26]..", "..SubmissionCache[27]..", "..SubmissionCache[28]..", "..(SubmissionCache[16] * 30)..", "..TotalFlags..", "..SubmissionCache[16]..", "..SubmissionCache[29]..", "..SubmissionCache[31]..", "..SubmissionCache[30]..", "..SubmissionCache[32]..", "..RaceFlags..", "..ClassFlags..", '"..SubmissionCache[2].."', '"..SubmissionCache[3].."', '"..SubmissionCache[4].."', '"..SubmissionCache[5].."', '"..SubmissionCache[60].."', '"..SubmissionCache[61].."', "..SubmissionCache[50]..", "..SubmissionCache[52]..", "..SubmissionCache[54]..", "..SubmissionCache[56]..","..SubmissionCache[46]..", "..SubmissionCache[47]..", "..SubmissionCache[48]..", "..SubmissionCache[49]..", "..SubmissionCache[51]..", "..SubmissionCache[53]..", "..SubmissionCache[55]..", "..SubmissionCache[57]..", "..SubmissionCache[21]..", "..SubmissionCache[44]..", "..SubmissionCache[43]..", "..SubmissionCache[45]..");")		
			WorldDBExecute("INSERT INTO acore_world.dh_ownership_tracker VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..SubmissionType..", "..Entry..");")
		end
	
end

function ItemSubmit(player, SubmissionCache, SubmissionType)
	player:SendBroadcastMessage("Item received by server...")
	TotalFlags = 0
	ClassFlags = 0
	RaceFlags = 0
	ExtraFlags = 0
	local itemQuality = 0

	local Entry = WorldDBQuery("SELECT MAX(`entry`) FROM acore_world.item_template;"):GetInt32(0)
	local Entry2 = WorldDBQuery("SELECT MAX(`entry`) FROM acore_world.dh_item_template;"):GetInt32(0)

	if Entry2 >= Entry then
		Entry = (Entry + (Entry2 - Entry)) + 1
	end

	---

	if SubmissionCache[50] then
		RaceFlags = RaceFlags + 1
	end

	if SubmissionCache[51] then
		RaceFlags = RaceFlags + 2
	end

	if SubmissionCache[52] then
		RaceFlags = RaceFlags + 4
	end

	if SubmissionCache[53] then
		RaceFlags = RaceFlags + 8
	end

	if SubmissionCache[54] then
		RaceFlags = RaceFlags + 16
	end

	if SubmissionCache[55] then
		RaceFlags = RaceFlags + 32
	end

	if SubmissionCache[56] then
		RaceFlags = RaceFlags + 64
	end

	if SubmissionCache[57] then
		RaceFlags = RaceFlags +128
	end

	if SubmissionCache[58] then
		RaceFlags = RaceFlags + 512
	end

	if SubmissionCache[59] then
		RaceFlags = RaceFlags + 1024
	end

	---

	if SubmissionCache[60] then
		ClassFlags = ClassFlags + 1
	end

	if SubmissionCache[61] then
		ClassFlags = ClassFlags + 2
	end

	if SubmissionCache[62] then
		ClassFlags = ClassFlags + 4
	end

	if SubmissionCache[63] then
		ClassFlags = ClassFlags + 8
	end

	if SubmissionCache[64] then
		ClassFlags = ClassFlags + 16
	end

	if SubmissionCache[65] then
		ClassFlags = ClassFlags + 64
	end

	if SubmissionCache[66] then
		ClassFlags = ClassFlags + 128
	end

	if SubmissionCache[67] then
		ClassFlags = ClassFlags + 256
	end

	if SubmissionCache[68] then
		ClassFlags = ClassFlags + 1024
	end

	---

	if SubmissionCache[69] then
		ExtraFlags = ExtraFlags + 2
	end

	if SubmissionCache[70] then
		ExtraFlags = ExtraFlags + 4
	end

	if SubmissionCache[71] then
		ExtraFlags = ExtraFlags + 32
	end
	
	if SubmissionCache[72] then
		ExtraFlags = ExtraFlags + 2048
	end
	
	if SubmissionCache[73] then
		ExtraFlags = ExtraFlags + 624288
	end
	
	if SubmissionCache[74] then
		ExtraFlags = ExtraFlags + 134217728 
		ItemQuality = 7
	else
		ItemQuality = SubmissionCache[26]
	end
	
	---


		if SubmissionCache[2] == "0" then
		player:SendBroadcastMessage("Submission failed! Requires a name!")
		else
		player:SendBroadcastMessage("Item successfully received by database. You will be informed if your creation is approved.")
			WorldDBExecute("INSERT INTO acore_world.dh_item_template VALUES ("..Entry..", '"..SubmissionCache[2].."', '"..SubmissionCache[3].."', "..SubmissionCache[24]..", "..SubmissionCache[25]..", "..SubmissionCache[4]..", "..SubmissionCache[26]..", "..ExtraFlags..", NULL, NULL, "..SubmissionCache[27]..", "..ClassFlags..", "..RaceFlags..", "..(SubmissionCache[28] + 5)..", "..SubmissionCache[28]..", "..SubmissionCache[29]..", "..SubmissionCache[30]..", "..SubmissionCache[75]..", "..SubmissionCache[32]..", "..SubmissionCache[8]..", "..SubmissionCache[33]..", "..SubmissionCache[9]..", "..SubmissionCache[34]..", "..SubmissionCache[10]..", "..SubmissionCache[35]..", "..SubmissionCache[11]..", "..SubmissionCache[36]..", "..SubmissionCache[12]..", "..SubmissionCache[5]..", "..SubmissionCache[14]..", "..SubmissionCache[15]..", "..SubmissionCache[16]..", "..SubmissionCache[17]..", "..SubmissionCache[13]..", "..SubmissionCache[7]..", "..SubmissionCache[19]..", "..SubmissionCache[20]..", "..SubmissionCache[31]..", "..(SubmissionCache[28] * 2.857142857)..", "..SubmissionCache[37]..", "..SubmissionCache[6]..", 1, '"..SubmissionCache[21].."', "..SubmissionCache[46]..", "..SubmissionCache[44]..", "..SubmissionCache[43]..", "..SubmissionCache[45]..");")
			WorldDBExecute("INSERT INTO acore_world.dh_ownership_tracker VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..SubmissionType..", "..Entry..");")

			
		end


end

function ContentCreatorHandlers.SubmitIntoDatabase(player, SubmissionCache, SubmissionType)
	TotalFlags = 0
	ClassFlags = 0
	RaceFlags = 0
	ExtraFlags = 0
	
--	print("Passed to main...")
	
		-- creature below
		if SubmissionCache[21] == 2 and SubmissionType == 1 then -- writs
			if CharDBQuery("SELECT `writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[19] then
			--	goto Continue_Creatures
			CreatureSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendNotification("Not enough writs stored accountwide!")
				goto CCSkip
			end
		
		end
		
		if SubmissionCache[21] == 1 and SubmissionType == 1 then -- gold
			if CharDBQuery("SELECT `gold` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[18] then
			--	goto Continue_Creatures
			CreatureSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough gold stored accountwide!")
				goto CCSkip
			end
		end
		
		if SubmissionCache[21] == 3 and SubmissionType == 1 then -- greater writs
			if CharDBQuery("SELECT `greater_writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[20] then
			--	goto Continue_Creatures
			CreatureSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough writs stored accountwide!")
				goto CCSkip
			end
		end
		
		-- quest below

		if SubmissionCache[21] == 2 and SubmissionType == 2 then -- writs
			if CharDBQuery("SELECT `writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[43] then
			--	goto Continue_Quests
			QuestSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough writs stored accountwide!")
				goto CCSkip
			end
		
		end
		
		if SubmissionCache[21] == 1 and SubmissionType == 2 then -- gold
			if CharDBQuery("SELECT `gold` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[44] then
			--	goto Continue_Quests
			QuestSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough gold stored accountwide!")
				goto CCSkip
			end
		end
		
		if SubmissionCache[21] == 3 and SubmissionType == 2 then -- greater writs
			if CharDBQuery("SELECT `greater_writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[45] then
				--	goto Continue_Quests
			QuestSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough writs stored accountwide!")
				goto CCSkip
			end
		end

		-- item below
		
		if SubmissionCache[46] == 2 and SubmissionType == 3 then -- writs
			if CharDBQuery("SELECT `writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[43] then
				--	goto Continue_Items
				ItemSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough writs stored accountwide!")
				goto CCSkip
			end
		
		end
		
		if SubmissionCache[46] == 1 and SubmissionType == 3 then -- gold
			if CharDBQuery("SELECT `gold` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[44] then

				--	goto Continue_Items
				ItemSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough gold stored accountwide!")
				goto CCSkip
			end
		end
		
		if SubmissionCache[46] == 3 and SubmissionType == 3 then -- greater writs
			if CharDBQuery("SELECT `greater_writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..""):GetInt32(0) >= SubmissionCache[45] then

				--	goto Continue_Items
				ItemSubmit(player, SubmissionCache, SubmissionType)
			else
				player:SendBroadcastMessage("Not enough writs stored accountwide!")
				goto CCSkip
			end
		end


	
	::CCSkip::
end

RegisterPlayerEvent(3, Login_WritCheck)
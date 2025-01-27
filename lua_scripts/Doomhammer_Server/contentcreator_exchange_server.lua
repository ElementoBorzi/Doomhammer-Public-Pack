local AIO = AIO or require("AIO") and require("contentcreator_exchange_frame")


local ExchangeHandlers = AIO.AddHandlers("AIO_EXG", {})
local alliance_coincounter = 41131
local horde_coincounter = 41130

local writ = 58009
local greaterwrit = 58010

local function AIO_OnExchange_UICall(player, object)



        AIO.Handle(player, "AIO_EXG", "ShowFrame")
        -- AIO.Handle(player, "AIO_EXG", "SetEXGText", 2, 123456)

        local query1 = CharDBQuery("SELECT `writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..";"):GetUInt32(0)
        local query2 = CharDBQuery("SELECT `greater_writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..";"):GetUInt32(0)
        local query3 = CharDBQuery("SELECT `gold` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..";"):GetUInt32(0)

        if query1 then
            AIO.Handle(player, "AIO_EXG", "SetEXGText", 1, query1)
        end

        if query2 then
            AIO.Handle(player, "AIO_EXG", "SetEXGText", 3, query2)
        end

        if query3 then
            AIO.Handle(player, "AIO_EXG", "SetEXGText", 2, query3)
        end
end

local function AIO_OnOpenExchange_Alliance(event, player, object)
    AIO.Handle(player, "AIO_EXG", "GreetingsVoice", 0)
    AIO_OnExchange_UICall(player, object)
end
    
local function AIO_OnOpenExchange_Horde(event, player, object)
    AIO.Handle(player, "AIO_EXG", "GreetingsVoice", 1)
    AIO_OnExchange_UICall(player, object)
end


RegisterCreatureGossipEvent(alliance_coincounter, 1, AIO_OnOpenExchange_Alliance)
RegisterCreatureGossipEvent(horde_coincounter, 1, AIO_OnOpenExchange_Horde)

function ExchangeHandlers.TransferCurrency(player, ExgTable)

    local AccountCurrencyTable = {}


    local Query = CharDBQuery("SELECT * FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..";")
		if(Query) then
		repeat
		--	table.insert(PollmasterCache, {Query:GetUInt32(0), Query:GetUInt32(1), Query:GetString(0), Query:GetString(1), Query:GetString(2)})	
			table.insert(AccountCurrencyTable, {Query:GetUInt32(0), Query:GetUInt32(1), Query:GetUInt32(2), Query:GetUInt32(3)})	
		until not Query:NextRow()
            
		end

        if not Query then
            CharDBExecute("INSERT INTO acore_characters.dh_account_writstorage VALUES ("..player:GetAccountId()..", 0, 0, 0);")
        end


        if ExgTable[1] == 1 then

            BankAmount = CharDBQuery("SELECT `writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..";"):GetUInt32(0)

            if ExgTable[2] == 1 then


                ExgAmt = tonumber(ExgTable[3] * -1)

                



                if (BankAmount + ExgAmt) < 0 then
                    player:SendBroadcastMessage("You don't have enough writs to withdraw this amount!")
                else
                    CharDBExecute("UPDATE acore_characters.dh_account_writstorage SET `writs` = (`writs` + "..ExgAmt..") WHERE `accountid` = "..player:GetAccountId()..";")
                    CharDBExecute("INSERT INTO acore_characters.dh_writstorage_logs VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..ExgTable[1]..", "..ExgAmt..", CURTIME(), CURDATE());")
                    player:SendBroadcastMessage((ExgAmt * -1).." writs withdrawn.")
                    player:AddItem(writ, (ExgAmt * -1))

                    AIO.Handle(player, "AIO_EXG", "SetEXGText", 1, (BankAmount + ExgAmt))
                end

                
            end

            if ExgTable[2] == 0 then

                ExgAmt = tonumber(ExgTable[3])
                

                local var = player:GetItemCount(writ)


                if ExgAmt > var then

                    player:SendBroadcastMessage("You don't have enough writs to deposit this amount!")
                end

                if ExgAmt <= var then
                    CharDBExecute("UPDATE acore_characters.dh_account_writstorage SET `writs` = (`writs` + "..ExgAmt..") WHERE `accountid` = "..player:GetAccountId()..";")
                    CharDBExecute("INSERT INTO acore_characters.dh_writstorage_logs VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..ExgTable[1]..", "..ExgAmt..", CURTIME(), CURDATE());")
                    player:SendBroadcastMessage(ExgAmt.." writs deposited.")
                    player:RemoveItem(writ, ExgAmt)

                    AIO.Handle(player, "AIO_EXG", "SetEXGText", 1, (BankAmount + ExgAmt))
                end

                
            end
            

            

        end

        if ExgTable[1] == 2 then

            BankAmount = CharDBQuery("SELECT `gold` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..";"):GetUInt32(0)

            if ExgTable[2] == 1 then


                ExgAmt = ((tonumber(ExgTable[3]) * 10000) + (tonumber(ExgTable[4]) * 100) + tonumber(ExgTable[5])) * -1

                



                if (BankAmount + ExgAmt) < 0 then
                    player:SendBroadcastMessage("You don't have enough gold to withdraw this amount!")
                else
                    CharDBExecute("UPDATE acore_characters.dh_account_writstorage SET `gold` = (`gold` + "..ExgAmt..") WHERE `accountid` = "..player:GetAccountId()..";")
                    CharDBExecute("INSERT INTO acore_characters.dh_writstorage_logs VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..ExgTable[1]..", "..ExgAmt..", CURTIME(), CURDATE());")
                    player:SendBroadcastMessage(tonumber(ExgTable[3]).." gold, "..tonumber(ExgTable[4]).." silver, "..tonumber(ExgTable[5]).." copper withdrawn.")
                    player:ModifyMoney((ExgAmt * -1))

                    AIO.Handle(player, "AIO_EXG", "SetEXGText", 2, (BankAmount + ExgAmt))
                end

                
            end

            if ExgTable[2] == 0 then

                ExgAmt = (tonumber(ExgTable[3]) * 10000) + (tonumber(ExgTable[4]) * 100) + tonumber(ExgTable[5])
                

                local var = player:GetCoinage()


                if ExgAmt > var then

                    player:SendBroadcastMessage("You don't have enough gold to deposit this amount!")
                end

                if ExgAmt <= var then
                    CharDBExecute("UPDATE acore_characters.dh_account_writstorage SET `gold` = (`gold` + "..ExgAmt..") WHERE `accountid` = "..player:GetAccountId()..";")
                    CharDBExecute("INSERT INTO acore_characters.dh_writstorage_logs VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..ExgTable[1]..", "..ExgAmt..", CURTIME(), CURDATE());")
                    player:SendBroadcastMessage(tonumber(ExgTable[3]).." gold, "..tonumber(ExgTable[4]).." silver, "..tonumber(ExgTable[5]).." copper deposited.")
                    player:ModifyMoney((ExgAmt * -1))

                    AIO.Handle(player, "AIO_EXG", "SetEXGText", 2, (BankAmount + ExgAmt))
                end

                
            end

        end

        if ExgTable[1] == 3 then


            BankAmount = CharDBQuery("SELECT `greater_writs` FROM acore_characters.dh_account_writstorage WHERE `accountid` = "..player:GetAccountId()..";"):GetUInt32(0)

            if ExgTable[2] == 1 then


                ExgAmt = tonumber(ExgTable[3] * -1)

                



                if (BankAmount + ExgAmt) < 0 then
                    player:SendBroadcastMessage("You don't have enough greater writs to withdraw this amount!")
                else
                    CharDBExecute("UPDATE acore_characters.dh_account_writstorage SET `greater_writs` = (`greater_writs` + "..ExgAmt..") WHERE `accountid` = "..player:GetAccountId()..";")
                    CharDBExecute("INSERT INTO acore_characters.dh_writstorage_logs VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..ExgTable[1]..", "..ExgAmt..", CURTIME(), CURDATE());")
                    player:SendBroadcastMessage((ExgAmt * -1).." greater writs withdrawn.")
                    player:AddItem(greaterwrit, (ExgAmt * -1))

                    AIO.Handle(player, "AIO_EXG", "SetEXGText", 3, (BankAmount + ExgAmt))
                end

                
            end

            if ExgTable[2] == 0 then

                ExgAmt = tonumber(ExgTable[3])
                

                local var = player:GetItemCount(greaterwrit)


                if ExgAmt > var then

                    player:SendBroadcastMessage("You don't have enough greater writs to deposit this amount!")
                end

                if ExgAmt <= var then
                    CharDBExecute("UPDATE acore_characters.dh_account_writstorage SET `greater_writs` = (`greater_writs` + "..ExgAmt..") WHERE `accountid` = "..player:GetAccountId()..";")
                    CharDBExecute("INSERT INTO acore_characters.dh_writstorage_logs VALUES ("..player:GetAccountId()..", "..player:GetGUIDLow()..", "..ExgTable[1]..", "..ExgAmt..", CURTIME(), CURDATE());")
                    player:SendBroadcastMessage(ExgAmt.." greater writs deposited.")
                    player:RemoveItem(greaterwrit, ExgAmt)

                    AIO.Handle(player, "AIO_EXG", "SetEXGText", 3, (BankAmount + ExgAmt))
                end

                
            end

        end



end


local AIO = AIO or require("AIO") and ("pollmaster_frame")


local timer = 14400000 -- 4 hours
local timer_short = 5000 -- 5 seconds
local timer_long = 28800000 -- 8 hours
local alliance_pollmaster = 41089
local horde_pollmaster = 41088
local HordePollmaster = 3110583
local AlliancePollmaster = 3110586 -- guid

local PollmasterHandlers = AIO.AddHandlers("AIOPollmaster", {})

local function AIO_OnPollMaster_UICall(player, object)
--	object:PlayDirectSound(5274)
--	playerData.Load(player)

	CreatePlayerCache(player)
	AIO.Handle(player, "AIOPollmaster", "GeneratePollButtons", PollmasterCache, CreatePlayerCache(player))

	AIO.Handle(player, "AIOPollmaster", "ShowFrame")
--	AIO.Handle(player, "AIOPollmaster", "CreatePlayerCache", player:GetAccountId(), PollmasterCache)
	
end

local function PlayerLogin(event, player)
	AIO.Handle(player, "AIOPollmaster", "ButtonGenLoop")
end

local function AIO_OnOpenPollmasterGossip_Alliance(event, player, object)
	AIO_OnPollMaster_UICall(player, object)
end

local function AIO_OnOpenPollmasterGossip_Horde(event, player, object)
	AIO_OnPollMaster_UICall(player, object)
end

local function PollmasterCallout(event, delay, calls, creature)

	local blurbRand = math.random(#PollmasterCache)
	local blurbRandText = PollmasterCache[blurbRand][3]
	if blurbRandText then
	creature:SendUnitYell("Poll for the day: "..blurbRandText.."", 0)
	creature:PerformEmote(5)
	
	end
end

function PollmasterCreateCache()

	PollmasterCache = {
	}
	
	local Query = CharDBQuery("SELECT * FROM acore_characters.dh_poll_questions WHERE `active` = 1;")
		if(Query) then
		repeat
		--	table.insert(PollmasterCache, {Query:GetUInt32(0), Query:GetUInt32(1), Query:GetString(0), Query:GetString(1), Query:GetString(2)})	
			table.insert(PollmasterCache, {Query:GetUInt32(0), Query:GetUInt32(1), Query:GetString(2), Query:GetString(3), Query:GetString(4)})	
		until not Query:NextRow() or #PollmasterCache == 6
	
		end
		
end


function PollmasterInit(event)
	PollmasterCreateCache()
--	print("PollmasterCache initialized.")
	
end

function PollmasterReload(event, delays, calls)
	PollmasterCreateCache()
-- every 8 hours, empty and reload cache

--	print("PollmasterCache reloaded.")
	

end



local function PollmasterSpawn(event, creature)

	creature:RegisterEvent(PollmasterCallout, timer, 0)
	creature:RegisterEvent(PollmasterCallout, timer_short, 1)

end

function CallCallout(event, player, command)

	if command == "callout" then
		PollmasterCallout()
		
	end
	
	if command == "createcache" then
		PollmasterReload()
	end
	
	if command == "pollmaster" then
		AIO.Handle(player, "AIOPollmaster", "GeneratePollButtons", PollmasterCache)
		return false
	end

end

function PollmasterHandlers.PollButtonTextBox(player, numberID, ...)
	AIO.Handle(player, "AIOPollmaster", "GenerateUIText", PollmasterCache, numberID)
	AIO.Handle(player, "AIOPollmaster", "RedoAnsweringQuestionID", numberID)
end

function PollmasterHandlers.GenerateTexture(player, button, ...)

	local existence2 = CharDBQuery("SELECT `answer` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..player:GetAccountId().." AND `question_id` = "..PollmasterCache[button][1]..";")

	if existence2 then
		local existence3 = existence2:GetUInt32(0)


		AIO.Handle(player, "AIOPollmaster", "GenerateTexture", PollmasterCache, CreatePlayerCache(player), button, existence3)
	else

		AIO.Handle(player, "AIOPollmaster", "GenerateTexture", PollmasterCache, CreatePlayerCache(player), button, 0)
	end

end


function PollmasterHandlers.Reply(player, questionID, answer, ...)
	local tablePick = PollmasterCache[questionID][1]
	
	local existence = CharDBQuery("SELECT `answer` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..player:GetAccountId().." AND `question_id` = "..tablePick..";")
	
	if existence then
	CharDBExecute("UPDATE acore_characters.dh_poll_answers SET `answer` = "..answer.." WHERE `accountguid` = "..player:GetAccountId().." AND `question_id` = "..tablePick..";")
	else
	CharDBExecute("INSERT INTO acore_characters.dh_poll_answers VALUES ("..player:GetAccountId()..", "..tablePick..", "..answer..");")
	end
end

function PollmasterHandlers.CallCache(player, a, ...)

	return PollmasterCache[a][1]
end

function CreatePlayerCache(player)

	PlayerCache = {}

	local acct = player:GetAccountId()
	local LowNumber = PollmasterCache[1][1]
	-- local Query = CharDBQuery("SELECT * FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..player:GetAccountId().." AND `question_id` IN ("..PollmasterCache[1][1]..", "..PollmasterCache[2][1]..", "..PollmasterCache[3][1]..", "..PollmasterCache[4][1]..", "..PollmasterCache[5][1]..", "..PollmasterCache[6][1]..");")


		for i=1, #PollmasterCache do
			--table.insert{PlayerCache, {(player:GetAccountId()), (CharDBQuery("SELECT `question_id` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..player:GetAccountId().." AND `question_id` = "..PollmasterCache[i][1]..";")), (CharDBQuery("SELECT `answer` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..player:GetAccountId().." AND `question_id` = "..PollmasterCache[i][1]..";")}}
			
			--local var1 = CharDBQuery("SELECT `question_id` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..acct.." AND `question_id` = "..PollmasterCache[i][1]..";"):GetUInt32(0)
			--local var2 = CharDBQuery("SELECT `answer` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..acct.." AND `question_id` = "..PollmasterCache[i][1]..";"):GetUInt32(0)

			--print("var1: "..CharDBQuery("SELECT `question_id` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..acct.." AND `question_id` = "..PollmasterCache[i][1]..";"):GetUInt32(0))
			--print("var2: "..CharDBQuery("SELECT `answer` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..acct.." AND `question_id` = "..PollmasterCache[i][1]..";"):GetUInt32(0))
			
			-- maybe add if not clause? research!
			if not CharDBQuery("SELECT `question_id` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..acct.." AND `question_id` = "..PollmasterCache[i][1]..";") then
			else
				table.insert(PlayerCache, {acct, CharDBQuery("SELECT `question_id` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..acct.." AND `question_id` = "..PollmasterCache[i][1]..";"):GetUInt32(0), CharDBQuery("SELECT `answer` FROM acore_characters.dh_poll_answers WHERE `accountguid` = "..acct.." AND `question_id` = "..PollmasterCache[i][1]..";"):GetUInt32(0)})
			end
		end
	
	if PlayerCache then
		return PlayerCache
	else
		return nil
	end
end

function PollmasterHandlers.CallPlayerCache(player)
	CreatePlayerCache(player)
end


RegisterCreatureGossipEvent(alliance_pollmaster, 1, AIO_OnOpenPollmasterGossip_Alliance)
RegisterCreatureGossipEvent(horde_pollmaster, 1, AIO_OnOpenPollmasterGossip_Horde)
RegisterCreatureEvent(41088, 5, PollmasterSpawn)
RegisterCreatureEvent(41089, 5, PollmasterSpawn)
RegisterServerEvent(33, PollmasterInit)
CreateLuaEvent(PollmasterReload, timer_long, 0)

RegisterPlayerEvent(42, CallCallout)
RegisterPlayerEvent(3, PlayerLogin)
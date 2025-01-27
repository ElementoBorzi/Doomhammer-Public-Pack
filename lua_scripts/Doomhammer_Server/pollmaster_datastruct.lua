local questionData = {}
local playerData = {}

local KEYS = {
	questions = {
		id = 1,
		active = 2,
		blurb = 3,
		question = 4
	},
	
	answers = {
		accountid = 1,
		questionid = 2,
		answers = 3

	}


}

function GetDataStructKeys()
	return KEYS
end

function questionData.Load()
	questionData.Cache = {}
	
	local Query = CharDBQuery("SELECT * FROM `dh_poll_questions` WHERE `active` = 1;")
	if(Query) then
		repeat
			table.insert(questionData.Cache, {Query:GetUInt32(KEYS.questions.id-1), Query:GetString(KEYS.questions.blurb-1), Query:GetString(KEYS.questions.question-1)})
		until not Query:NextRow()
	
	end

end

function playerData.Load(player)
	playerData.Cache = {}
	local accountguid = player:GetAccountId()
	
	local Query = CharDBQuery("SELECT * FROM `dh_poll_answers` WHERE `accountguid` = "..accountguid..";")
	if(Query) then
		repeat
		table.insert(playerData.Cache, {Query:GetUInt32(KEYS.answers.accountid-1), Query:GetString(KEYS.answers.questionid-1), Query:GetUInt32(KEYS.answers.answers-1)})	
			
		until not Query:NextRow()
	
	end

end

function GetQuestionData()
	return questionData.Cache
end

function GetPlayerData()
	return playerData.Cache
end
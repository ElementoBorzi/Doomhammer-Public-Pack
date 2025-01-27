local PLAYER_FLAGS_NO_XP_GAIN = 0x02000000
local PLAYER_FLAGS = 150
local PLAYER_EVENT_ON_LEVEL_CHANGE = 13
local PLAYER_EVENT_ON_LOGIN = 3


local function OnMaxLevelHit(event, player, oldLevel)

    if player:GetLevel() == 60 and player:GetGMRank() == 0 then
        --player:SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN)
    end

    if player:GetLevel() == 55 and player:GetGMRank() == 0 then
        --player:SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN)
    end

    if player:GetLevel() == 50 and player:GetGMRank() == 0 then
        --player:SetFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN)
    end

end


local function After50Login(event, player)

    if player:HasFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN) and player:GetLevel() == 50 then
        player:RemoveFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN)
    end

end

local function After55Login(event, player)

    if player:HasFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN) and player:GetLevel() == 55 then
        player:RemoveFlag(PLAYER_FLAGS, PLAYER_FLAGS_NO_XP_GAIN)
    end

end

RegisterPlayerEvent(PLAYER_EVENT_ON_LEVEL_CHANGE, OnMaxLevelHit)
RegisterPlayerEvent(PLAYER_EVENT_ON_LOGIN, After50Login)
RegisterPlayerEvent(PLAYER_EVENT_ON_LOGIN, After55Login)
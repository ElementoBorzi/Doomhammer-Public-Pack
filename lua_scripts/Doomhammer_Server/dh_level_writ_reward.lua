local PLAYER_EVENT_ON_LEVEL_CHANGE = 13
local PLAYER_EVENT_ON_LOGIN = 3


local function OnCertainLevelHit(event, player, oldLevel)

    if player:GetLevel() == 60 and player:GetGMRank() == 0 then
        player:AddItem(58009, 4)
    end

    if player:GetLevel() == 55 and player:GetGMRank() == 0 then
        player:AddItem(58009, 3)
        
    end
    if player:GetLevel() == 50 and player:GetGMRank() == 0 then
        player:AddItem(58009, 3)
    end

    if player:GetLevel() == 45 and player:GetGMRank() == 0 then
        player:AddItem(58009, 2)
    end

end

RegisterPlayerEvent(PLAYER_EVENT_ON_LEVEL_CHANGE, OnCertainLevelHit)
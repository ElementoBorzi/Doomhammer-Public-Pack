-- setting up random numbers
math.randomseed(os.time())
local ffa_cmd = "ffa"
-- 5 minutes, can change if needed tbh
local COOLDOWN_TIME = 300
-- I FUCKING LOVE TABLES
local lastUsed = {}

local function ToggleHostilizer(player)
    local playerGUID = player:GetGUIDLow()
    local currentTime = os.time()
    local nearestCreature = player:GetNearestCreature(15)
    local detectRoll = math.random(3, 18)
    local detectDc = 12

    if player:InBattleground() then
        player:SendBroadcastMessage("You cannot hostilize while in a battleground.")
        return
    end
    
    if lastUsed[playerGUID] and (currentTime - lastUsed[playerGUID]) < COOLDOWN_TIME 
    then
        local remainingCooldown = COOLDOWN_TIME - (currentTime - lastUsed[playerGUID])
        player:SendBroadcastMessage("You must wait " .. remainingCooldown .. " seconds before hostilizing again.")
        return
    end
    
    if player:HasAura(85001) 
    then
        player:RemoveAura(85001)
        player:SendBroadcastMessage("You are no longer hostile.")
    else
        player:AddAura(85001, player)
        player:SendBroadcastMessage("You have become hostile!")
        player:Say("<PvP enabled.>", 0)
    end

    if nearestCreature and nearestCreature:IsGuard(true)
    then
        if player:HasAura(85001)
        then
            if detectRoll >= detectDc
            then
                player:SendBroadcastMessage("Your hostility was observed by a nearby guard.")
                nearestCreature:AttackStart(player)
                nearestCreature:CallForHelp(30)
            else
                player:SendBroadcastMessage("Your hostility evades a guard's notice.")
            end
        end
    else
        player:SendBroadcastMessage("Your hostility was not observed.")
end

lastUsed[playerGUID] = currentTime
end

local function OnFFACommand(event, player, command)
    if command == ffa_cmd 
    then
        ToggleHostilizer(player)
        return false
    end
end

RegisterPlayerEvent(42, OnFFACommand, 0)

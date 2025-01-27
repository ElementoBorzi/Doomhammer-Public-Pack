local stonetable = {}




local function OnStoneSummon(event, go, player)
    local query = WorldDBQuery("SELECT * FROM `gameobject_template` WHERE `name` LIKE 'Meeting Stone%' AND `entry` = "..go:GetEntry()..";")

    if query then
        player:SendBroadcastMessage("Summoning player...")
        player:CastSpell(player:GetSelection(), 7720, true)
    end
    return true
end

local function RegisterEvents_MeetingStones()
    local SelectAllStones = WorldDBQuery("SELECT * FROM `gameobject_template` WHERE `name` LIKE 'Meeting Stone%' AND NOT `entry` IN (19532, 19533);")

    if SelectAllStones then
    repeat
        table.insert(stonetable, {SelectAllStones:GetUInt32(0)})
    until not SelectAllStones:NextRow()
    end

    for i=1, #stonetable do
        RegisterGameObjectEvent(stonetable[i][1], 14, OnStoneSummon)
    end
end

RegisterEvents_MeetingStones()
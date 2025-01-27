local SHALLOWGRAVE_1 = 128403
local SHALLOWGRAVE_2 = 128308
local ZOMBIE_SPELL = 10247

local function OnGossipHello_SG(event, go, state)
    if go:Data():Get("Opened") ~= 1 and go:GetLootState() == 2 then

        go:Data():Set("Opened", 1)
        
        SpawnedDummy = PerformIngameSpawn(1, 12999, go:GetMapId(), go:GetInstanceId(), go:GetX(), go:GetY(), go:GetZ(), go:GetO())
        if math.random(100) >= 50 then
            SpawnedDummy:CastSpell(self, ZOMBIE_SPELL)
        end
        print("Succeeded")
        SpawnedDummy:DespawnOrUnsummon(500)
        print("Unsummoned")
    end
end

local function OnSpawn_SG(event, go)
    go:Data():Set("Opened", 0)
end


--RegisterGameObjectGossipEvent(SHALLOWGRAVE_1, 1, OnGossipHello_SG)
--RegisterGameObjectGossipEvent(SHALLOWGRAVE_2, 1, OnGossipHello_SG)

RegisterGameObjectEvent(SHALLOWGRAVE_1, 2, OnSpawn_SG)
RegisterGameObjectEvent(SHALLOWGRAVE_2, 2, OnSpawn_SG)

RegisterGameObjectEvent(SHALLOWGRAVE_1, 9, OnGossipHello_SG)
RegisterGameObjectEvent(SHALLOWGRAVE_2, 9, OnGossipHello_SG)
local Skinner = 41149
local Carolos = 41150
local Carolos_Skinner = {}

function Carolos_Skinner.OnDeath(event, creature, killer)
	spawnedCarolos = PerformIngameSpawn(1, Carolos, creature:GetMapId(), creature:GetInstanceId(), creature:GetX(), creature:GetY(), creature:GetZ(), creature:GetO(), false)
	spawnedCarolos:DespawnOrUnsummon(60000)
end

RegisterCreatureEvent(Skinner, 4, Carolos_Skinner.OnDeath)
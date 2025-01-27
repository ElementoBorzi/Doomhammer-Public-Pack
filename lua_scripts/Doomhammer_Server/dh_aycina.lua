-- croosh spells
-- on enter Feral Scar Vale (1105 and has quest), spawn Croosh (41100)

Croosh = {}
Aycina = {}

function CrooshCageUse(event, go, player)
--	creature:SpawnCreature(41100, -5130, 1786, 78.5, 0, 5)
	AycinaCrea = go:GetNearestCreature(500, 41102)
	
	if player:HasQuest(26045) then
	AycinaCrea:SendUnitSay("By Elune, you saved me... Quick, kill that yeti!", 0)
	AycinaCrea:CastSpell(self, 1856, true)
	AycinaCrea:MoveTo(0, -5141, 1753, 78.45, false)
--	AycinaCrea:DespawnOrUnsummon(3000)
	spawnedCroosh = PerformIngameSpawn(1, 41100, 1, 0, -5133.509766, 1783.240356, 78.235069, 4.843971, false)
	spawnedCroosh:MoveTo(0, -5134, 1760, 78.573944, false)
	spawnedCroosh:Attack(player)
	spawnedCroosh:RegisterEvent(Croosh.BoredDespawn, 10000, 1)
	AycinaCrea:RegisterEvent(Aycina.RespawnAycina, 20000, 1)
	
	
	end
	
end

function CrooshOnLeaveCombat(event, creature)
	creature:DespawnOrUnsummon(1500)
end

local function CrooshOnDeath(event, creature, killer)
	AycinaCrea = creature:GetNearestCreature(500, 41102)
	ElementalCrea = creature:GetNearestCreature(500, 41101)
	CrooshCageDoor = creature:GetNearestGameObject(500, 350003)
	creature:DespawnOrUnsummon(950)
	if ElementalCrea then
	ElementalCrea:DespawnOrUnsummon(0)
	end

end


function Aycina.RespawnAycina(event, delay, pCall, creature)
	creature:RemoveAura(1784)
	creature:NearTeleport(-5129.943359, 1745.836548, 79.050194, 2.525841)
end

function ElementalOnLeaveCombat(event, creature)
	creature:DespawnOrUnsummon(1500)
end

function ElementalOnDeath(event, creature, killer)
	creature:DespawnOrUnsummon(950)
end

function Croosh.OnEnterCombat(event, creature, target)
	creature:RegisterEvent(Croosh.SummonElemental, 8000, 1)
	creature:RegisterEvent(Croosh.Stormstrike, 10000, 0)
	
	
	creature:SendUnitSay("You've ruined my plans! Prepare to die!", 0)

end

function Croosh.OnSpawn(event, creature)
	creature:CastSpell(self, 25469, triggered)
end

function Croosh.SummonElemental(event, delay, pCall, creature)
	spawnedElemental = PerformIngameSpawn(1, 41101, 1, 0, creature:GetX(), creature:GetY(), creature:GetZ(), 0, false)
	spawnedElemental:Attack(creature:GetAITarget(0, true))
	creature:CastSpell(self, 37964)
end

function Croosh.Stormstrike(event, delay, pCall, creature)
	creature:CastSpell(creature:GetAITarget(1, true), 51876)
	
end

function Croosh.BoredDespawn(event, delay, pCall, creature)
	if creature:IsInCombat() then
	
	else
		creature:SendUnitSay("Must have been the wind...", 0)
		creature:SetWalk(true)
		creature:MoveTo(0, -5133.509766, 1783.240356, 78.235069, false)
		creature:DespawnOrUnsummon(2000)
	end
end

RegisterGameObjectEvent(350003, 14, CrooshCageUse)
RegisterCreatureEvent(41100, 2, CrooshOnLeaveCombat)
RegisterCreatureEvent(41101, 2, ElementalOnLeaveCombat)
RegisterCreatureEvent(41100, 4, CrooshOnDeath)
RegisterCreatureEvent(41101, 4, ElementalOnDeath)
RegisterCreatureEvent(41100, 1, Croosh.OnEnterCombat)
RegisterCreatureEvent(41100, 5, Croosh.OnSpawn)
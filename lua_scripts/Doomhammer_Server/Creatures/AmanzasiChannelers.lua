
local Channeler = {}

function Channeler.OnEnterCombat(event, creature, target)
	creature:RegisterEvent(Channeler.BloodLeech, 15000, 0)
	creature:RegisterEvent(Channeler.MindFlay, 9000, 1)
end

function Channeler.BloodLeech(event, delay, calls, creature)
	creature:CastSpell(self, 22644)
end

function Channeler.MindFlay(event, delay, calls, creature)

	if (math.random(1, 100) <= 65) then
	creature:CastSpell(creature:GetVictim(), 25387)
	end
end

function Channeler.Reset(event, creature)
	creature:RemoveEvents()
end

RegisterCreatureEvent(41098, 1, Channeler.OnEnterCombat)
RegisterCreatureEvent(41098, 2, Channeler.Reset)
RegisterCreatureEvent(41098, 4, Channeler.Reset)
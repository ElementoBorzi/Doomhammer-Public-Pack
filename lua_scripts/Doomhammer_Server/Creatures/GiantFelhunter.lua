local GiantFelhunter = {}
local FELHUNTER = 41153

function GiantFelhunter.OnEnterCombat(event, creature, target)
	creature:RegisterEvent(GiantFelhunter.ArcaneTorrent, 45000, 0)
end

function GiantFelhunter.ArcaneTorrent(event, delay, calls, creature)
    creature:CastSpell(self, 28730)
end


function GiantFelhunter.Reset(event, creature)
	creature:RemoveEvents()
end

RegisterCreatureEvent(FELHUNTER, 1, GiantFelhunter.OnEnterCombat)
RegisterCreatureEvent(FELHUNTER, 2, GiantFelhunter.Reset)
RegisterCreatureEvent(FELHUNTER, 4, GiantFelhunter.Reset)
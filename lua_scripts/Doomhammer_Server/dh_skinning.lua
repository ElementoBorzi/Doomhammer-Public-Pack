
local function ON_SKINNING_LEARN_DELAY(event, delay, calls, player)
    player:LearnSpell(8617)
    player:LearnSpell(8618)
    player:SetSkill(393, 225, 1, 210)
end


local function ON_SKINNING_LEARN(event, player, spellId)
    if spellId == 8613 then
        player:RegisterEvent(ON_SKINNING_LEARN_DELAY, 1000, 1)
    end

end

RegisterPlayerEvent(44, ON_SKINNING_LEARN)
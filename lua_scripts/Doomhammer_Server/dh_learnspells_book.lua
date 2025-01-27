local warlock_affliction = 58197
local warlock_demonology = 58198
local warlock_destruction = 58199
local warrior_fury = 58200
local warrior_arms = 58201
local warrior_protection = 58202
local paladin_holy = 58203
local paladin_retribution = 58204
local paladin_protection = 58205
local rogue_subtlety = 58206
local rogue_assassination = 58207
local rogue_combat = 58208
local hunter_beastmastery = 58211
local hunter_survival = 58210
local hunter_marksmanship = 58209
local mage_frost = 58212
local mage_fire = 58213
local mage_arcane = 58214
local shaman_restoration = 58215
local shaman_elemental = 58216
local shaman_enhancement = 58217
local priest_shadow = 58218
local priest_discipline = 58219
local priest_holy = 58220
local druid_feral = 58221
local druid_balance = 58222
local druid_restoration = 58223






local function OnSpellbookUse(event, player, item, target)

	if item:GetEntry() == warlock_affliction then
		player:LearnSpell(172)
		player:LearnSpell(6222)
		player:LearnSpell(6223)
		player:LearnSpell(1454)
		player:LearnSpell(1455)
		player:LearnSpell(1490)
	end
	if item:GetEntry() == warlock_demonology then
		player:LearnSpell(689)
		player:LearnSpell(699)
		player:LearnSpell(709)
		player:LearnSpell(687)
		player:LearnSpell(696)
		player:LearnSpell(1120)
	end
	if item:GetEntry() == warlock_destruction then
		player:LearnSpell(348)
		player:LearnSpell(707)
		player:LearnSpell(1094)
		player:LearnSpell(1120)
		player:LearnSpell(8288)
		player:LearnSpell(5740)
	end

	if item:GetEntry() == warrior_fury then
		player:LearnSpell(11604)
		player:LearnSpell(8820)
		player:LearnSpell(1464)
		player:LearnSpell(1680)
		player:LearnSpell(2458)
	end
	if item:GetEntry() == warrior_arms then
		player:LearnSpell(11608)
		player:LearnSpell(7369)
		player:LearnSpell(845)
		player:LearnSpell(772)
		player:LearnSpell(6546)
		player:LearnSpell(7384)
	end
	if item:GetEntry() == warrior_protection then
		player:LearnSpell(8204)
		player:LearnSpell(8198)
		player:LearnSpell(6343)
		player:LearnSpell(355)
		player:LearnSpell(71)
	end

	if item:GetEntry() == paladin_holy then
		player:LearnSpell(20166)
		player:LearnSpell(5614)
		player:LearnSpell(879)
		player:LearnSpell(7328)
	end
	if item:GetEntry() == paladin_retribution then
		player:LearnSpell(20922)
		player:LearnSpell(20116)
		player:LearnSpell(26573)
		player:LearnSpell(10298)
		player:LearnSpell(7294)
		player:LearnSpell(853)
	end
	if item:GetEntry() == paladin_protection then
		player:LearnSpell(10290)
		player:LearnSpell(643)
		player:LearnSpell(465)
		player:LearnSpell(20116)
		player:LearnSpell(26573)
		player:LearnSpell(62124)
	end

	if item:GetEntry() == rogue_subtlety then
		player:LearnSpell(8725)
		player:LearnSpell(8724)
		player:LearnSpell(8676)
		player:LearnSpell(8631)
		player:LearnSpell(703)
		player:LearnSpell(1784)
	end
	if item:GetEntry() == rogue_assassination then
		player:LearnSpell(2590)
		player:LearnSpell(2589)
		player:LearnSpell(53)
		player:LearnSpell(1776)
		player:LearnSpell(1784)
	end
	if item:GetEntry() == rogue_combat then
		player:LearnSpell(6761)
		player:LearnSpell(6760)
		player:LearnSpell(2098)
		player:LearnSpell(8639)
		player:LearnSpell(1943)
		player:LearnSpell(1766)
	end

	if item:GetEntry() == hunter_beastmastery then
		player:LearnSpell(3043)
		player:LearnSpell(56641)
		player:LearnSpell(6991)
		player:LearnSpell(1515)
		player:LearnSpell(136)
		player:LearnSpell(982)
		player:LearnSpell(883)
	end
	if item:GetEntry() == hunter_survival then
		player:LearnSpell(14261)
		player:LearnSpell(14260)
		player:LearnSpell(2973)
		player:LearnSpell(14302)
		player:LearnSpell(13795)
		player:LearnSpell(13163)
	end
	if item:GetEntry() == hunter_marksmanship then
		player:LearnSpell(14282)
		player:LearnSpell(14281)
		player:LearnSpell(3044)
		player:LearnSpell(1130)
		player:LearnSpell(14323)
		player:LearnSpell(13165)
	end

	if item:GetEntry() == mage_frost then
		player:LearnSpell(8427)
		player:LearnSpell(6141)
		player:LearnSpell(10)
		player:LearnSpell(8492)
		player:LearnSpell(120)
		player:LearnSpell(45438)
	end
	if item:GetEntry() == mage_fire then
		player:LearnSpell(2138)
		player:LearnSpell(2137)
		player:LearnSpell(2136)
		player:LearnSpell(2121)
		player:LearnSpell(2120)
		player:LearnSpell(543)
	end
	if item:GetEntry() == mage_arcane then
		player:LearnSpell(5145)
		player:LearnSpell(5144)
		player:LearnSpell(5143)
		player:LearnSpell(6117)
		player:LearnSpell(12051)
	end

	if item:GetEntry() == shaman_restoration then
		player:LearnSpell(52131)
		player:LearnSpell(52129)
		player:LearnSpell(52127)
		player:LearnSpell(20609)
		player:LearnSpell(2008)
		player:LearnSpell(1064)
	end
	if item:GetEntry() == shaman_elemental then
		player:LearnSpell(8045)
		player:LearnSpell(8044)
		player:LearnSpell(8042)
		player:LearnSpell(8050)
		player:LearnSpell(8052)
		player:LearnSpell(421)
	end
	if item:GetEntry() == shaman_enhancement then
		player:LearnSpell(8235)
		player:LearnSpell(8232)
		player:LearnSpell(905)
		player:LearnSpell(8232)
		player:LearnSpell(8235)
		player:LearnSpell(8042)
	end

	if item:GetEntry() == priest_shadow then
		player:LearnSpell(970)
		player:LearnSpell(594)
		player:LearnSpell(589)
		player:LearnSpell(8102)
		player:LearnSpell(8092)
		player:LearnSpell(2944)
	end
	if item:GetEntry() == priest_discipline then
		player:LearnSpell(600)
		player:LearnSpell(592)
		player:LearnSpell(17)
		player:LearnSpell(1244)
		player:LearnSpell(1243)
		player:LearnSpell(588)
	end
	if item:GetEntry() == priest_holy then
		player:LearnSpell(6075)
		player:LearnSpell(6074)
		player:LearnSpell(139)
		player:LearnSpell(15430)
		player:LearnSpell(15237)
		player:LearnSpell(2060)
	end

	if item:GetEntry() == druid_feral then
		player:LearnSpell(768)
		player:LearnSpell(6800)
		player:LearnSpell(5221)
		player:LearnSpell(467)
	end
	if item:GetEntry() == druid_balance then
		player:LearnSpell(8925)
		player:LearnSpell(8924)
		player:LearnSpell(8921)
		player:LearnSpell(770)
		player:LearnSpell(16857)
		player:LearnSpell(2912)
	end
	if item:GetEntry() == druid_restoration then
		player:LearnSpell(8918)
		player:LearnSpell(740)
		player:LearnSpell(5232)
		player:LearnSpell(1126)
		player:LearnSpell(50769)
	end
end

RegisterItemEvent(warlock_affliction, 2, OnSpellbookUse)
RegisterItemEvent(warlock_demonology, 2, OnSpellbookUse)
RegisterItemEvent(warlock_destruction, 2, OnSpellbookUse)
RegisterItemEvent(warrior_fury, 2, OnSpellbookUse)
RegisterItemEvent(warrior_arms, 2, OnSpellbookUse)
RegisterItemEvent(warrior_protection, 2, OnSpellbookUse)
RegisterItemEvent(paladin_holy, 2, OnSpellbookUse)
RegisterItemEvent(paladin_retribution, 2, OnSpellbookUse)
RegisterItemEvent(paladin_protection, 2, OnSpellbookUse)
RegisterItemEvent(rogue_subtlety, 2, OnSpellbookUse)
RegisterItemEvent(rogue_assassination, 2, OnSpellbookUse)
RegisterItemEvent(rogue_combat, 2, OnSpellbookUse)
RegisterItemEvent(hunter_beastmastery, 2, OnSpellbookUse)
RegisterItemEvent(hunter_survival, 2, OnSpellbookUse)
RegisterItemEvent(hunter_marksmanship, 2, OnSpellbookUse)
RegisterItemEvent(mage_frost, 2, OnSpellbookUse)
RegisterItemEvent(mage_fire, 2, OnSpellbookUse)
RegisterItemEvent(mage_arcane, 2, OnSpellbookUse)
RegisterItemEvent(shaman_restoration, 2, OnSpellbookUse)
RegisterItemEvent(shaman_elemental, 2, OnSpellbookUse)
RegisterItemEvent(shaman_enhancement, 2, OnSpellbookUse)
RegisterItemEvent(priest_shadow, 2, OnSpellbookUse)
RegisterItemEvent(priest_discipline, 2, OnSpellbookUse)
RegisterItemEvent(priest_holy, 2, OnSpellbookUse)
RegisterItemEvent(druid_feral, 2, OnSpellbookUse)
RegisterItemEvent(druid_restoration, 2, OnSpellbookUse)
RegisterItemEvent(druid_balance, 2, OnSpellbookUse)
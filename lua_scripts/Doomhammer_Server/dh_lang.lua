local orcish = 58115
-- skill, spell
-- 109, 669
local common = 58116
local dwarven = 58117
local darnassian = 58118
local taurahe = 58119
local thalassian = 58120
local draconic = 58121
local demonic = 58122
local gnomish = 58123
local troll = 58124
local gutterspeak = 58125
local draenei = 58126

locX = 0
locY = 0
locZ = 0
locO = 0
locMap = 0

local function Teleport2(event, delay, pCall, player)
	player:Teleport(locMap, locX, locY, locZ, locO)
end

local function LangTeachor(event, player, item, target)
	local skill = 109
	local skillSpell = 669
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end

end

local function LangTeachco(event, player, item, target)
	local skill = 98
	local skillSpell = 668
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end

end

local function LangTeachdw(event, player, item, target)
	local skill = 111
	local skillSpell = 672
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end

end

local function LangTeachda(event, player, item, target)
	local skill = 113
	local skillSpell = 671
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
	
end

local function LangTeachta(event, player, item, target)
	local skill = 115
	local skillSpell = 670
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end

local function LangTeachth(event, player, item, target)
	local skill = 137
	local skillSpell = 813
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end

local function LangTeachdrc(event, player, item, target)
	local skill = 138
	local skillSpell = 814
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end

local function LangTeachdem(event, player, item, target)
	local skill = 139
	local skillSpell = 815
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end

local function LangTeachgno(event, player, item, target)
	local skill = 313
	local skillSpell = 7340
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end

local function LangTeachtro(event, player, item, target)
	local skill = 315
	local skillSpell = 7341
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end

local function LangTeachgut(event, player, item, target)
	local skill = 673
	local skillSpell = 17737
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end

local function LangTeachdrae(event, player, item, target)
	local skill = 759
	local skillSpell = 29932
	
	if player:GetSkillValue(skill) == 300 then
		player:SendBroadcastMessage("You already know this language!")
	else
	player:LearnSpell(skillSpell)
	player:SetSkill(skill, 300, 1, 300)

	locX = player:GetX()
	locY = player:GetY()
	locZ = player:GetZ()
	locO = player:GetO()
	locMap = player:GetMapId()
	
	player:RegisterEvent(Teleport2, 0, 1)
	player:Teleport(723, 0, 0, 0, 0)
	end
end


RegisterItemEvent(orcish, 2, LangTeachor)
RegisterItemEvent(common, 2, LangTeachco)
RegisterItemEvent(dwarven, 2, LangTeachdw)
RegisterItemEvent(darnassian, 2, LangTeachda)
RegisterItemEvent(taurahe, 2, LangTeachta)
RegisterItemEvent(thalassian, 2, LangTeachth)
RegisterItemEvent(draconic, 2, LangTeachdrc)
RegisterItemEvent(demonic, 2, LangTeachdem)
RegisterItemEvent(gnomish, 2, LangTeachgno)
RegisterItemEvent(troll, 2, LangTeachtro)
RegisterItemEvent(gutterspeak, 2, LangTeachgut)
RegisterItemEvent(draenei, 2, LangTeachdrae)
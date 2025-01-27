local grimtotem_red = 58054
local grimtotem_blue = 58094
local grimtotem_white = 58095
local dwarf_darkiron = 58086
local dwarf_wildhammer1 = 58087
local dwarf_wildhammer2 = 58088
local dwarf_wildhammer3 = 58089
local dwarf_wildhammer4 = 58090
local orc_scarred = 58093
local orc_blackrock = 58092
local orc_dragonmaw = 58091
local gnome_cultist = 58100
local gnome_leper = 58099
local troll_forest = 58096
local troll_dark = 58097
local troll_ice = 58098
local human_cultist = 58101
local human_scarlet = 58114
local belf_darkranger = 58112
local belf_darkhan = 58113




local function ResetModel(event, delay, pCall, player)
	player:DeMorph()
end

--
--
--
local function OnItemUse(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 25) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 17) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_gtB(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 26) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 18) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_gtW(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 27) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 19) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_dDI(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 26) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 18) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_dWH1(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 22) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 14) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_dWH2(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 23) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 15) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_dWH3(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 24) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 16) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_dWH4(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 25) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 17) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_oDM(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 20) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 14) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_oSC(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 32) -- skin
    end
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_oBR(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 31) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 15) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_gLE(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 10) -- skin
    end
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_gCU(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 11) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 10) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_tIC(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 19) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 19) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_tDA(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 18) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 18) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_tFO(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 20) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 20) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_hCU(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 15) -- skin
    end
	
	if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 16) -- skin
    end
	
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_hWM(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 15) -- skin
    end
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_beDK(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 0) then
		
        player:SetByteValue(153, 0, 19) -- skin
    end
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end

local function OnItemUse_beDR(event, player, item, target)
	player:SetByteValue(153, 1, 0)
	
    if (player:GetGender() == 1) then
		
        player:SetByteValue(153, 0, 19) -- skin
    end
	player:SetDisplayId(28077)
	 -- face
	player:RegisterEvent(ResetModel, 100, 1)
end


-- Skin Orbs above
--
-- Morph Orbs below



RegisterItemEvent(grimtotem_red, 2, OnItemUse)
RegisterItemEvent(grimtotem_blue, 2, OnItemUse_gtB)
RegisterItemEvent(grimtotem_white, 2, OnItemUse_gtW)
RegisterItemEvent(dwarf_darkiron, 2, OnItemUse_dDI)
RegisterItemEvent(dwarf_wildhammer1, 2, OnItemUse_dWH1)
RegisterItemEvent(dwarf_wildhammer2, 2, OnItemUse_dWH2)
RegisterItemEvent(dwarf_wildhammer3, 2, OnItemUse_dWH3)
RegisterItemEvent(dwarf_wildhammer4, 2, OnItemUse_dWH4)
RegisterItemEvent(orc_dragonmaw, 2, OnItemUse_oDM)
RegisterItemEvent(orc_scarred, 2, OnItemUse_oSC)
RegisterItemEvent(orc_blackrock, 2, OnItemUse_oBR)
RegisterItemEvent(gnome_leper, 2, OnItemUse_gLE)
RegisterItemEvent(gnome_cultist, 2, OnItemUse_gCU)
RegisterItemEvent(troll_ice, 2, OnItemUse_tIC)
RegisterItemEvent(troll_dark, 2, OnItemUse_tDA)
RegisterItemEvent(troll_forest, 2, OnItemUse_tFO)
RegisterItemEvent(human_cultist, 2, OnItemUse_hCU)
RegisterItemEvent(human_scarlet, 2, OnItemUse_hWM)
RegisterItemEvent(belf_darkhan, 2, OnItemUse_beDK)
RegisterItemEvent(belf_darkranger, 2, OnItemUse_beDR)
local AIO = AIO or require("AIO") and require("contentcreator_main")

if AIO.AddAddon() then
    return
end

local ContentCreatorHandlers = AIO.AddHandlers("AIO_CC", {})
local newfont = "Fonts\\FRIZQT__.TTF"
local CurrentOption = 0
CC_UIMode = 1
local QualVar1 = 0
local QualVar2 = 0
local QualVar3 = 0

local ItemClasses = {}

	ItemClasses[0] = {
		id = 0,
		name = "Consumable",

		subclass = {

		},
	}
		ItemClasses[0].subclass[0] = {
			id = 0,
			name = "Consumable",


		}
		ItemClasses[0].subclass[1] = {
			id = 1,
			name = "Potion",


		}
		ItemClasses[0].subclass[2] = {
			id = 2,
			name = "Elixir",


		}
		ItemClasses[0].subclass[3] = {
			id = 3,
			name = "Flask",


		}
		ItemClasses[0].subclass[4] = {
			id = 4,
			name = "Scroll",


		}
		ItemClasses[0].subclass[5] = {
			id = 5,
			name = "Food & Drink",


		}
		ItemClasses[0].subclass[6] = {
			id = 6,
			name = "Item Enhancement",


		}
		ItemClasses[0].subclass[7] = {
			id = 7,
			name = "Bandage",


		}
		ItemClasses[0].subclass[8] = {
			id = 8,
			name = "Other",


		}



	ItemClasses[1] = {
		id = 1,
		name = "Container",

		subclass = {

		},
	}
		ItemClasses[1].subclass[0] = {
			id = 0,
			name = "Bag",


		}
		ItemClasses[1].subclass[1] = {
			id = 1,
			name = "Soul Bag",


		}
		ItemClasses[1].subclass[2] = {
			id = 2,
			name = "Herb Bag",


		}
		ItemClasses[1].subclass[3] = {
			id = 3,
			name = "Enchanting Bag",


		}
		ItemClasses[1].subclass[4] = {
			id = 4,
			name = "Engineering Bag",


		}
		ItemClasses[1].subclass[5] = {
			id = 5,
			name = "Gem Bag",


		}
		ItemClasses[1].subclass[6] = {
			id = 6,
			name = "Mining Bag",


		}
		ItemClasses[1].subclass[7] = {
			id = 7,
			name = "Leatherworking Bag",


		}
		ItemClasses[1].subclass[8] = {
			id = 8,
			name = "Inscription Bag",


		}

	ItemClasses[2] = {
		id = 2,
		name = "Weapon",

		subclass = {

		},
	}

	ItemClasses[2].subclass[0] = {
		id = 0,
		name = "1H Axe",


	}
	ItemClasses[2].subclass[1] = {
		id = 1,
		name = "2H Axe",


	}
	ItemClasses[2].subclass[2] = {
		id = 2,
		name = "Bow",


	}
	ItemClasses[2].subclass[3] = {
		id = 3,
		name = "Gun",


	}
	ItemClasses[2].subclass[4] = {
		id = 4,
		name = "1H Mace",


	}
	ItemClasses[2].subclass[5] = {
		id = 5,
		name = "2H Mace",


	}
	ItemClasses[2].subclass[6] = {
		id = 6,
		name = "Polearm",


	}
	ItemClasses[2].subclass[7] = {
		id = 7,
		name = "1H Sword",


	}
	ItemClasses[2].subclass[8] = {
		id = 8,
		name = "2H Sword",


	}

	ItemClasses[2].subclass[9] = {
		id = 10,
		name = "Staff",


	}
	ItemClasses[2].subclass[10] = {
		id = 11,
		name = "Exotic",


	}
	ItemClasses[2].subclass[11] = {
		id = 13,
		name = "Fist Weapon",


	}
	ItemClasses[2].subclass[12] = {
		id = 14,
		name = "Miscellaneous",


	}
	ItemClasses[2].subclass[13] = {
		id = 15,
		name = "Dagger",


	}
	ItemClasses[2].subclass[14] = {
		id = 16,
		name = "Thrown",


	}
	ItemClasses[2].subclass[15] = {
		id = 17,
		name = "Spear",


	}
	ItemClasses[2].subclass[16] = {
		id = 18,
		name = "Crossbow",


	}
	ItemClasses[2].subclass[17] = {
		id = 19,
		name = "Wand",


	}
	ItemClasses[2].subclass[18] = {
		id = 20,
		name = "Fishing Pole",


	}

	ItemClasses[3] = {
		id = 3,
		name = "Gem",

		subclass = {

		},
	}
	
	ItemClasses[3].subclass[0] = {
		id = 0,
		name = "Red",


	}
	ItemClasses[3].subclass[1] = {
		id = 1,
		name = "Blue",


	}
	ItemClasses[3].subclass[2] = {
		id = 2,
		name = "Yellow",


	}
	ItemClasses[3].subclass[3] = {
		id = 3,
		name = "Purple",


	}
	ItemClasses[3].subclass[4] = {
		id = 4,
		name = "Green",


	}
	ItemClasses[3].subclass[5] = {
		id = 5,
		name = "Orange",


	}
	ItemClasses[3].subclass[6] = {
		id = 6,
		name = "Meta",


	}
	ItemClasses[3].subclass[7] = {
		id = 7,
		name = "Simple",


	}
	ItemClasses[3].subclass[8] = {
		id = 8,
		name = "Prismatic",


	}

	ItemClasses[4] = {
		id = 4,
		name = "Armor",

		subclass = {

		},
	}
	
	ItemClasses[4].subclass[0] = {
		id = 0,
		name = "Miscellaneous",


	}
	ItemClasses[4].subclass[1] = {
		id = 1,
		name = "Cloth",


	}
	ItemClasses[4].subclass[2] = {
		id = 2,
		name = "Leather",


	}
	ItemClasses[4].subclass[3] = {
		id = 3,
		name = "Mail",


	}
	ItemClasses[4].subclass[4] = {
		id = 4,
		name = "Plate",


	}
	ItemClasses[4].subclass[5] = {
		id = 6,
		name = "Shield",


	}
	ItemClasses[4].subclass[6] = {
		id = 7,
		name = "Libram",


	}
	ItemClasses[4].subclass[7] = {
		id = 8,
		name = "Idol",


	}
	ItemClasses[4].subclass[8] = {
		id = 9,
		name = "Totem",


	}
	ItemClasses[4].subclass[9] = {
		id = 10,
		name = "Sigil",


	}

	ItemClasses[5] = {
		id = 5,
		name = "Reagent",

		subclass = {

		},
	}
	
	ItemClasses[5].subclass[0] = {
		id = 0,
		name = "Reagent",


	}
	ItemClasses[5].subclass[1] = {
		id = 0,
		name = "Reagent",


	}

	ItemClasses[6] = {
		id = 6,
		name = "Projectile",

		subclass = {

		},
	}
	
	ItemClasses[6].subclass[0] = {
		id = 2,
		name = "Arrow",


	}
	ItemClasses[6].subclass[1] = {
		id = 3,
		name = "Bullet",


	}

	ItemClasses[7] = {
		id = 7,
		name = "Trade Goods",

		subclass = {

		},
	}
	
	ItemClasses[7].subclass[0] = {
		id = 0,
		name = "Trade Goods",


	}
	ItemClasses[7].subclass[1] = {
		id = 1,
		name = "Parts",


	}
	ItemClasses[7].subclass[2] = {
		id = 2,
		name = "Explosives",


	}
	ItemClasses[7].subclass[3] = {
		id = 3,
		name = "Devices",


	}
	ItemClasses[7].subclass[4] = {
		id = 4,
		name = "Jewelcrafting",


	}
	ItemClasses[7].subclass[5] = {
		id = 5,
		name = "Cloth",


	}
	ItemClasses[7].subclass[6] = {
		id = 6,
		name = "Leather",


	}
	ItemClasses[7].subclass[7] = {
		id = 7,
		name = "Metal/Stone",


	}
	ItemClasses[7].subclass[8] = {
		id = 8,
		name = "Meat",


	}
	ItemClasses[7].subclass[9] = {
		id = 9,
		name = "Herb",


	}
	ItemClasses[7].subclass[10] = {
		id = 10,
		name = "Elemental",


	}
	ItemClasses[7].subclass[11] = {
		id = 11,
		name = "Other",


	}
	ItemClasses[7].subclass[12] = {
		id = 12,
		name = "Enchanting",


	}
	ItemClasses[7].subclass[13] = {
		id = 13,
		name = "Materials",


	}
	ItemClasses[7].subclass[14] = {
		id = 14,
		name = "Armor Enchantment",


	}
	ItemClasses[7].subclass[15] = {
		id = 15,
		name = "Weapon Enchantment",


	}

	ItemClasses[8] = { -- 8 is obsolete
		id = 9,
		name = "Recipe",

		subclass = {

		},
	}
	
	ItemClasses[8].subclass[0] = {
		id = 0,
		name = "Book",


	}
	ItemClasses[8].subclass[1] = {
		id = 1,
		name = "Leatherworking",


	}
	ItemClasses[8].subclass[2] = {
		id = 2,
		name = "Tailoring",


	}
	ItemClasses[8].subclass[3] = {
		id = 3,
		name = "Engineering",


	}
	ItemClasses[8].subclass[4] = {
		id = 4,
		name = "Blacksmithing",


	}
	ItemClasses[8].subclass[5] = {
		id = 5,
		name = "Cooking",


	}
	ItemClasses[8].subclass[6] = {
		id = 6,
		name = "Alchemy",


	}
	ItemClasses[8].subclass[7] = {
		id = 7,
		name = "First Aid",


	}
	ItemClasses[8].subclass[8] = {
		id = 8,
		name = "Enchanting",


	}
	ItemClasses[8].subclass[9] = {
		id = 9,
		name = "Fishing",


	}
	ItemClasses[8].subclass[10] = {
		id = 10,
		name = "Jewelcrafting",


	}

	ItemClasses[9] = { -- 10 is obsolete
		id = 11,
		name = "Quiver",

		subclass = {

		},
	}
	
	ItemClasses[9].subclass[0] = {
		id = 2,
		name = "Quiver",


	}
	ItemClasses[9].subclass[1] = {
		id = 3,
		name = "Ammo Pouch",


	}

	ItemClasses[10] = {
	id = 12,
	name = "Quest",

	subclass = {

	},
}

	ItemClasses[10].subclass[0] = {
		id = 0,
		name = "Key",


	}
	ItemClasses[10].subclass[1] = {
		id = 0,
		name = "Key",


	}

	ItemClasses[11] = {
		id = 13,
		name = "Keys",
	
		subclass = {
	
		},
	}
	
	ItemClasses[11].subclass[0] = {
		id = 0,
		name = "Key",
	
	
	}
	
	ItemClasses[11].subclass[1] = {
		id = 1,
		name = "Lockpick",
	
	
	}

	ItemClasses[12] = {
		id = 15,
		name = "Miscellaneous",
	
		subclass = {
	
		},
	}
	
	ItemClasses[12].subclass[0] = {
		id = 0,
		name = "Junk",
	
	
	}
	ItemClasses[12].subclass[1] = {
		id = 1,
		name = "Reagent",
	
	
	}
	ItemClasses[12].subclass[2] = {
		id = 2,
		name = "Pet",
	
	
	}
	ItemClasses[12].subclass[3] = {
		id = 3,
		name = "Holiday",
	
	
	}
	ItemClasses[12].subclass[4] = {
		id = 4,
		name = "Other",
	
	
	}
	ItemClasses[12].subclass[5] = {
		id = 5,
		name = "Mount",
	
	
	}
	
	ItemClasses[13] = {
		id = 16,
		name = "Glyphs",
	
		subclass = {
	
		},
	}
	
	ItemClasses[13].subclass[0] = {
		id = 1,
		name = "Warrior",
	
	
	}
	ItemClasses[13].subclass[1] = {
		id = 2,
		name = "Paladin",
	
	
	}
	ItemClasses[13].subclass[2] = {
		id = 3,
		name = "Hunter",
	
	
	}	ItemClasses[13].subclass[3] = {
		id = 4,
		name = "Rogue",
	
	
	}	ItemClasses[13].subclass[4] = {
		id = 5,
		name = "Priest",
	
	
	}	ItemClasses[13].subclass[5] = {
		id = 6,
		name = "Death Knight",
	
	
	}	ItemClasses[13].subclass[6] = {
		id = 7,
		name = "Shaman",
	
	
	}	ItemClasses[13].subclass[7] = {
		id = 8,
		name = "Mage",
	
	
	}	ItemClasses[13].subclass[8] = {
		id = 9,
		name = "Warlock",
	
	
	}	ItemClasses[13].subclass[9] = {
		id = 11,
		name = "Druid",
	
	
	}


local InventoryTypes = {}

	InventoryTypes[0] = {
		id = 0,
		name = "Non-equippable",

	}
	InventoryTypes[1] = {
		id = 1,
		name = "Head",

	}
	InventoryTypes[2] = {
		id = 2,
		name = "Neck",

	}
	InventoryTypes[3] = {
		id = 3,
		name = "Shoulder",

	}
	InventoryTypes[4] = {
		id = 4,
		name = "Shirt",

	}
	InventoryTypes[5] = {
		id = 5,
		name = "Chest (not robe)",

	}
	InventoryTypes[6] = {
		id = 6,
		name = "Waist",

	}
	InventoryTypes[7] = {
		id = 7,
		name = "Legs",

	}
	InventoryTypes[8] = {
		id = 8,
		name = "Feet",

	}
	InventoryTypes[9] = {
		id = 9,
		name = "Wrists",

	}
	InventoryTypes[10] = {
		id = 10,
		name = "Hands",

	}
	InventoryTypes[11] = {
		id = 11,
		name = "Finger",

	}
	InventoryTypes[12] = {
		id = 12,
		name = "Trinket",

	}
	InventoryTypes[13] = {
		id = 13,
		name = "One Hand (Weapon)",

	}
	InventoryTypes[14] = {
		id = 14,
		name = "Shield",

	}
	InventoryTypes[15] = {
		id = 15,
		name = "Bows",

	}
	InventoryTypes[16] = {
		id = 16,
		name = "Back",

	}
	InventoryTypes[17] = {
		id = 17,
		name = "Two-Hand",

	}
	InventoryTypes[18] = {
		id = 18,
		name = "Bag",

	}
	InventoryTypes[19] = {
		id = 19,
		name = "Tabard",

	}
	InventoryTypes[20] = {
		id = 20,
		name = "Robe",

	}
	InventoryTypes[21] = {
		id = 21,
		name = "Main Hand",

	}
	InventoryTypes[22] = {
		id = 22,
		name = "Off-Hand Weapon",

	}
	InventoryTypes[23] = {
		id = 23,
		name = "Orbs, Torches, Off-Hand",

	}
	InventoryTypes[24] = {
		id = 24,
		name = "Ammo",

	}
	InventoryTypes[25] = {
		id = 25,
		name = "Thrown",

	}
	InventoryTypes[26] = {
		id = 26,
		name = "Wands, Guns, Crossbow",

	}
	InventoryTypes[27] = {
		id = 27,
		name = "Quiver",

	}
	InventoryTypes[28] = {
		id = 28,
		name = "Relic",

	}
local ItemQualities = {}

	ItemQualities[0] = {
		id = 0,
		name = "Poor",
		r = 0.62,
		g = 0.62,
		b = 0.62,

	}

	ItemQualities[1] = {
		id = 1,
		name = "Common",
		r = 1,
		g = 1,
		b = 1,
	}

	ItemQualities[2] = {
		id = 2,
		name = "Uncommon",
		r = 0.12,
		g = 1,
		b = 0,
	}

	ItemQualities[3] = {
		id = 3,
		name = "Rare",
		r = 0,
		g = 0.44,
		b = 0.87,
	}

	ItemQualities[4] = {
		id = 4,
		name = "Epic",
		r = 0.64,
		g = 0.21,
		b = 0.93,

	}

	ItemQualities[5] = {
		id = 5,
		name = "Legendary",
		r = 1,
		g = 0.5,
		b = 0,

	}

	ItemQualities[6] = {
		id = 6,
		name = "Heirloom",
		r = 0.9,
		g = 0.8,
		b = 0.5,
	}

local CreatureRanks = {}

	CreatureRanks[0] = {
		id = 0,
		name = "Normal",

	}
	CreatureRanks[1] = {
		id = 1,
		name = "Elite",

	}
	CreatureRanks[2] = {
		id = 2,
		name = "Rare Elite",

	}
	CreatureRanks[3] = {
		id = 3,
		name = "Boss",

	}
	CreatureRanks[4] = {
		id = 4,
		name = "Rare",

	}
local ItemStats = {}

	ItemStats[0] = {
		id = 0,
		name = "+Mana",
	}
	ItemStats[1] = {
		id = 1,
		name = "+Health",
	}
	ItemStats[2] = {
		id = 3,
		name = "Agility",
	}
	ItemStats[3] = {
		id = 4,
		name = "Strength",
	}
	ItemStats[4] = {
		id = 5,
		name = "Intellect",
	}
	ItemStats[5] = {
		id = 6,
		name = "Spirit",
	}
	ItemStats[6] = {
		id = 7,
		name = "Stamina",
	}

local ItemMaterials = {}

	ItemMaterials[0] = {  -- begins at -1
		id = -1,
		name = "Consumables",

	}

	ItemMaterials[1] = {  
		id = 1,
		name = "Metal",

	}

	ItemMaterials[2] = {  
		id = 2,
		name = "Wood",

	}

	ItemMaterials[3] = {  
		id = 3,
		name = "Liquid",

	}

	ItemMaterials[4] = {  
		id = 4,
		name = "Jewelry",

	}

	ItemMaterials[5] = {  
		id = 5,
		name = "Chain",

	}

	ItemMaterials[6] = {  
		id = 6,
		name = "Plate",

	}

	ItemMaterials[7] = {  
		id = 7,
		name = "Cloth",

	}

	ItemMaterials[8] = {  
		id = 8,
		name = "Leather",

	}
local CreatureClasses = {}

	CreatureClasses[0] = {
		bitmask = 1,
		desc = "Warrior",

	}
	CreatureClasses[1] = {
		bitmask = 2,
		desc = "Paladin",

	}
	CreatureClasses[2] = {
		bitmask = 4,
		desc = "Rogue",

	}
	CreatureClasses[3] = {
		bitmask = 8,
		desc = "Mage",

	}


local ItemBondings = {}

	ItemBondings[0] = {
		id = 0,
		name = "No Binding",
	}
	ItemBondings[1] = {
		id = 1,
		name = "On Pick-Up",
	}
	ItemBondings[2] = {
		id = 2,
		name = "On Equip",
	}
	ItemBondings[3] = {
		id = 3,
		name = "On Use",
	}
	ItemBondings[4] = {
		id = 4,
		name = "Quest Item",
	}


local ReputationRanks = {}

	ReputationRanks[0] = {
		id = 0,
		name = "Hated",
	
	}
	ReputationRanks[1] = {
		id = 1,
		name = "Hostile",
	
	}
	ReputationRanks[2] = {
		id = 2,
		name = "Unfriendly",
	
	}
	ReputationRanks[3] = {
		id = 3,
		name = "Neutral",
	
	}
	ReputationRanks[4] = {
		id = 4,
		name = "Friendly",
	
	}
	ReputationRanks[5] = {
		id = 5,
		name = "Honored",
	
	}
	ReputationRanks[6] = {
		id = 6,
		name = "Revered",
	
	}
	ReputationRanks[7] = {
		id = 7,
		name = "Exalted",
	
	}

local QuestStrings = {
	logtitle = "",
	logdescription = "",
	questdescription = "",
	questcompletionlog = "",
	inquiredescription = "",
	completetext = "",

}

-- 
--


local function CoordsToTexCoords(size, xTop, yTop, xBottom, yBottom)
    -- Calculate the magic number
    local magic = (1 / size) / 2
    -- Calculate the top and left texture coordinates
    local Top = (yTop / size) + magic
    local Left = (xTop / size) + magic
    -- Calculate the bottom and right texture coordinates
    local Bottom = (yBottom / size) - magic
    local Right = (xBottom / size) - magic

    -- Return the texture coordinates
    return Left, Right, Top, Bottom
end

local function CoordCalc(size, xTop, yTop, xSize, ySize)

	-- top left coords are in Properties
	-- top right, add W to X coord
	-- bottom left, add H to Y coord
	-- bottom right, add both W and H to coords


	local Top = (yTop / size)
	local Left = (xTop / size)
	local Bottom = ((yTop + ySize) / size)
	local Right = ((xTop + xSize) / size)


	return Left, Right, Top, Bottom
end

MicroButtons = {
        AchievementMicroButton,
        QuestLogMicroButton,
        SocialsMicroButton,
        PVPMicroButton,
        LFDMicroButton,
        MainMenuMicroButton,
        HelpMicroButton
}

--
--

CC_ParentFrame = CreateFrame("Frame", "CC_ParentFrame", UIParent)
-- CC_ParentFrame:Hide()
-- REMOVES LFG BUTTON --

CC_ConfirmFrame = CreateFrame("Frame", "CC_ConfirmFrame", UIParent)

CC_WritingFrame = CreateFrame("Frame", "CC_WritingFrame", UIParent)

LFDMicroButton:SetScript("OnClick", function()
    if (LFDMicroButton:IsVisible()) then
		
		PlaySound("INTERFACESOUND_GAMEMENUOPEN", "SFX")
		CC_ParentFrame:Show()

		if CC_UIMode == 1 then
			NextPageButton:Hide()
		elseif CC_UIMode ~= 1 then
			NextPageButton:Show()
		end
--        CharUpdatesMicroButton:Show()
    end

end)



local scaleMulti = 0.85
CC_ParentFrame:SetPoint("LEFT", 40, 0)
CC_ParentFrame:SetSize(1024*scaleMulti, 768*scaleMulti)

CC_ParentFrame:SetToplevel(true)
CC_ParentFrame:SetClampedToScreen(true)
CC_ParentFrame:SetMovable(false)
CC_ParentFrame:EnableMouse(true)
CC_ParentFrame:SetScript("OnDragStart", CC_ParentFrame.StartMoving)
CC_ParentFrame:SetScript("OnHide", CC_ParentFrame.StopMovingOrSizing)
CC_ParentFrame:SetScript("OnDragStop", CC_ParentFrame.StopMovingOrSizing)

CC_ParentFrame.Background = CC_ParentFrame:CreateTexture(nil, "BACKGROUND")
CC_ParentFrame.Background:SetSize(CC_ParentFrame:GetSize())
CC_ParentFrame.Background:SetPoint("CENTER", CC_ParentFrame, "CENTER", 0, 0)
CC_ParentFrame.Background:SetTexture("Interface/Doomhammer/ContentCreatorAtlas")
CC_ParentFrame.Background:SetTexCoord(CoordCalc(2048, 0, 0, 1024, 768))

CC_ConfirmFrame:SetPoint("CENTER", 0, 0)
CC_ConfirmFrame:SetSize(600*scaleMulti, 300*scaleMulti)
CC_ConfirmFrame:SetToplevel(true)
CC_ConfirmFrame:SetClampedToScreen(true)
CC_ConfirmFrame:SetMovable(false)
CC_ConfirmFrame:EnableMouse(true)
CC_ConfirmFrame:SetScript("OnDragStart", CC_ConfirmFrame.StartMoving)
CC_ConfirmFrame:SetScript("OnHide", CC_ConfirmFrame.StopMovingOrSizing)
CC_ConfirmFrame:SetScript("OnDragStop", CC_ConfirmFrame.StopMovingOrSizing)

CC_ConfirmFrame.Background = CC_ConfirmFrame:CreateTexture(nil, "BACKGROUND")
CC_ConfirmFrame.Background:SetSize(CC_ConfirmFrame:GetSize())
CC_ConfirmFrame.Background:SetPoint("CENTER", CC_ConfirmFrame, "CENTER", 0, 0)
CC_ConfirmFrame.Background:SetTexture("Interface/Doomhammer/ContentCreatorAtlas")
CC_ConfirmFrame.Background:SetTexCoord(CoordCalc(2048, 1448, 1438, 600, 300))

CC_WritingFrame:SetPoint("CENTER", 0, 0)
CC_WritingFrame:SetSize(500*scaleMulti, 600*scaleMulti)
CC_WritingFrame:SetToplevel(true)
CC_WritingFrame:SetClampedToScreen(true)
CC_WritingFrame:SetMovable(true)
CC_WritingFrame:EnableMouse(true)
CC_WritingFrame:SetScript("OnDragStart", CC_WritingFrame.StartMoving)
CC_WritingFrame:SetScript("OnHide", CC_WritingFrame.StopMovingOrSizing)
CC_WritingFrame:SetScript("OnDragStop", CC_WritingFrame.StopMovingOrSizing)

CC_WritingFrame.Background = CC_WritingFrame:CreateTexture(nil, "BACKGROUND")
CC_WritingFrame.Background:SetSize(CC_WritingFrame:GetSize())
CC_WritingFrame.Background:SetPoint("CENTER", CC_WritingFrame, "CENTER", 0, 0)
CC_WritingFrame.Background:SetTexture("Interface/Doomhammer/ContentCreatorAtlas")
CC_WritingFrame.Background:SetTexCoord(CoordCalc(2048, 1036, 0, 500, 600))


CC_ParentFrame.CloseButton = CreateFrame("Button", nil, CC_ParentFrame, "UIPanelCloseButton")
CC_ParentFrame.CloseButton:SetSize(30, 30)
CC_ParentFrame.CloseButton:SetPoint("TOPRIGHT", CC_ParentFrame, "TOPRIGHT", 0, 0)
CC_ParentFrame.CloseButton:EnableMouse(true)
CC_ParentFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySound("INTERFACESOUND_CHARWINDOWCLOSE", "SFX")
	HideUIPanel(CC_ParentFrame)
	HideUIPanel(CC_ConfirmFrame)
	HideUIPanel(CC_WritingFrame)
--	ContentCreatorHandlers.HideFrame()
	end)



CC_ConfirmFrame.CloseButton = CreateFrame("Button", nil, CC_ConfirmFrame, "UIPanelCloseButton")
CC_ConfirmFrame.CloseButton:SetSize(30, 30)
CC_ConfirmFrame.CloseButton:SetPoint("TOPRIGHT", CC_ConfirmFrame, "TOPRIGHT", 0, 0)
CC_ConfirmFrame.CloseButton:EnableMouse(true)
CC_ConfirmFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySound("INTERFACESOUND_CHARWINDOWCLOSE", "SFX")
	CC_ConfirmFrame:Hide()
--	ContentCreatorHandlers.HideFrame()
	end)



CC_WritingFrame.CloseButton = CreateFrame("Button", nil, CC_WritingFrame, "UIPanelCloseButton")
CC_WritingFrame.CloseButton:SetSize(30, 30)
CC_WritingFrame.CloseButton:SetPoint("TOPRIGHT", CC_WritingFrame, "TOPRIGHT", 0, 0)
CC_WritingFrame.CloseButton:EnableMouse(true)
CC_WritingFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySound("INTERFACESOUND_CHARWINDOWCLOSE", "SFX")
	CC_WritingFrame:Hide()
--	ContentCreatorHandlers.HideFrame()
	end)



	
CC_WritingFrame_mode = 0

CC_WritingFrame:SetScript("OnDragStart", function(self, button)
	self:StartMoving()

end)
CC_WritingFrame:SetScript("OnDragStop", function(self)
	self:StopMovingOrSizing()

end)

CC_WritingFrame:Hide()



local cc_ParentTitle = CC_ParentFrame:CreateFontString("ParentTitle")
cc_ParentTitle:SetFont(newfont, 20, "OUTLINE")
cc_ParentTitle:SetSize(200, 10)
cc_ParentTitle:SetPoint("TOP", 0, -25)
cc_ParentTitle:SetText("Content Creator")

local RUSureText = CC_ConfirmFrame:CreateFontString("RUSureText")
RUSureText:SetFont(newfont, 14, "OUTLINE")
RUSureText:SetSize(200, 40)
RUSureText:SetPoint("TOPLEFT", 10, -30)
RUSureText:SetText("Are you sure you want to submit this?")
RUSureText:SetWordWrap(true)

local PriceText = CC_ConfirmFrame:CreateFontString("PriceText")
PriceText:SetFont(newfont, 14, "OUTLINE")
PriceText:SetSize(200, 40)
PriceText:SetPoint("TOP", 10, -30)
PriceText:SetText("Price")
PriceText:SetWordWrap(true)

local SupplyText = CC_ConfirmFrame:CreateFontString("SupplyText")
SupplyText:SetFont(newfont, 14, "OUTLINE")
SupplyText:SetSize(200, 40)
SupplyText:SetPoint("TOPRIGHT", -10, -30)
SupplyText:SetText("Storage")
SupplyText:SetWordWrap(true)

local Confirm_WritButton = CreateFrame("Button", "Confirm_WritButton", CC_ConfirmFrame)
Confirm_WritButton:SetSize(150, 50)
Confirm_WritButton:SetPoint("BOTTOMLEFT", CC_ConfirmFrame, 30, 65)
Confirm_WritButton:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Confirm_WritButton:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Confirm_WritButton:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Confirm_WritButton_text = Confirm_WritButton:CreateFontString("Confirm_WritButton_text")
Confirm_WritButton_text:SetFont(newfont, 12, "OUTLINE")
Confirm_WritButton_text:SetSize(150, 10)
Confirm_WritButton_text:SetPoint("CENTER", 0, 8)
Confirm_WritButton_text:SetText("Writs of Excellence")

local WritButton_Price = CC_ConfirmFrame:CreateFontString("WritButton_Price")
WritButton_Price:SetFont(newfont, 14, "OUTLINE")
WritButton_Price:SetSize(200, 40)
WritButton_Price:SetPoint("CENTER", 10, -30)
WritButton_Price:SetText("0")
WritButton_Price:SetWordWrap(true)

local WritButton_Supply = CC_ConfirmFrame:CreateFontString("WritButton_Supply")
WritButton_Supply:SetFont(newfont, 14, "OUTLINE")
WritButton_Supply:SetSize(200, 40)
WritButton_Supply:SetPoint("RIGHT", -10, -30)
WritButton_Supply:SetText("0")
WritButton_Supply:SetWordWrap(true)

local Confirm_GoldButton = CreateFrame("Button", "Confirm_GoldButton", CC_ConfirmFrame)
Confirm_GoldButton:SetSize(150, 50)
Confirm_GoldButton:SetPoint("BOTTOMLEFT", CC_ConfirmFrame, 30, 10)
Confirm_GoldButton:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Confirm_GoldButton:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Confirm_GoldButton:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Confirm_GoldButton_text = Confirm_GoldButton:CreateFontString("Confirm_GoldButton_text")
Confirm_GoldButton_text:SetFont(newfont, 12, "OUTLINE")
Confirm_GoldButton_text:SetSize(150, 10)
Confirm_GoldButton_text:SetPoint("CENTER", 0, 8)
Confirm_GoldButton_text:SetText("Gold")

local GoldButton_Price = CC_ConfirmFrame:CreateFontString("GoldButton_Price")
GoldButton_Price:SetFont(newfont, 14, "OUTLINE")
GoldButton_Price:SetSize(200, 40)
GoldButton_Price:SetPoint("CENTER", 10, -80)
GoldButton_Price:SetText("0")
GoldButton_Price:SetWordWrap(true)

local GoldButton_Supply = CC_ConfirmFrame:CreateFontString("GoldButton_Supply")
GoldButton_Supply:SetFont(newfont, 14, "OUTLINE")
GoldButton_Supply:SetSize(200, 40)
GoldButton_Supply:SetPoint("RIGHT", -10, -80)
GoldButton_Supply:SetText("0")
GoldButton_Supply:SetWordWrap(true)

local Confirm_GreaterWritButton = CreateFrame("Button", "Confirm_GreaterWritButton", CC_ConfirmFrame)
Confirm_GreaterWritButton:SetSize(150, 50)
Confirm_GreaterWritButton:SetPoint("BOTTOMLEFT", CC_ConfirmFrame, 30, 115)
Confirm_GreaterWritButton:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Confirm_GreaterWritButton:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Confirm_GreaterWritButton:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Confirm_GreaterWritButton_text = Confirm_GreaterWritButton:CreateFontString("Confirm_GreaterWritButton_text")
Confirm_GreaterWritButton_text:SetFont(newfont, 12, "OUTLINE")
Confirm_GreaterWritButton_text:SetSize(150, 10)
Confirm_GreaterWritButton_text:SetPoint("CENTER", 0, 8)
Confirm_GreaterWritButton_text:SetText("Writs of Greatness")

local GreaterWritButton_Price = CC_ConfirmFrame:CreateFontString("GreaterWritButton_Price")
GreaterWritButton_Price:SetFont(newfont, 14, "OUTLINE")
GreaterWritButton_Price:SetSize(200, 40)
GreaterWritButton_Price:SetPoint("CENTER", 10, 20)
GreaterWritButton_Price:SetText("0")
GreaterWritButton_Price:SetWordWrap(true)

local GreaterWritButton_Supply = CC_ConfirmFrame:CreateFontString("GreaterWritButton_Supply")
GreaterWritButton_Supply:SetFont(newfont, 14, "OUTLINE")
GreaterWritButton_Supply:SetSize(200, 40)
GreaterWritButton_Supply:SetPoint("RIGHT", -10, 20)
GreaterWritButton_Supply:SetText("0")
GreaterWritButton_Supply:SetWordWrap(true)

CC_ConfirmFrame.LesserWrit = CC_ConfirmFrame:CreateTexture()
CC_ConfirmFrame.LesserWrit:SetSize(32, 32)
CC_ConfirmFrame.LesserWrit:SetPoint("CENTER", -50, -30)
CC_ConfirmFrame.LesserWrit:SetTexture("Interface/Doomhammer/ContentCreatorAtlas")
CC_ConfirmFrame.LesserWrit:SetTexCoord(CoordCalc(2048, 1103, 1467, 64, 64))

CC_ConfirmFrame.GreaterWrit = CC_ConfirmFrame:CreateTexture()
CC_ConfirmFrame.GreaterWrit:SetSize(32, 32)
CC_ConfirmFrame.GreaterWrit:SetPoint("CENTER", -50, 20)
CC_ConfirmFrame.GreaterWrit:SetTexture("Interface/Doomhammer/ContentCreatorAtlas")
CC_ConfirmFrame.GreaterWrit:SetTexCoord(CoordCalc(2048, 1039, 1467, 64, 64))

CC_ConfirmFrame.GoldCoin = CC_ConfirmFrame:CreateTexture()
CC_ConfirmFrame.GoldCoin:SetSize(32, 30)
CC_ConfirmFrame.GoldCoin:SetPoint("CENTER", -50, -85)
CC_ConfirmFrame.GoldCoin:SetTexture("Interface/Doomhammer/ContentCreatorAtlas")
CC_ConfirmFrame.GoldCoin:SetTexCoord(CoordCalc(2048, 1167, 1516, 16, 15))

local submitButton = CreateFrame("Button", "submitButton", CC_ParentFrame)
submitButton:SetSize(150, 40)
submitButton:SetPoint("BOTTOMRIGHT", CC_ParentFrame, -30, 20)
submitButton:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
submitButton:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
submitButton:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
submitButton:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
submitButton:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
submitButton:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

local submitbutton_text = submitButton:CreateFontString("submitbutton_text")
submitbutton_text:SetFont(newfont, 14, "OUTLINE")
submitbutton_text:SetSize(100, 10)
submitbutton_text:SetPoint("CENTER", 0, 0)
submitbutton_text:SetText("Submit")

local NextPageButton = CreateFrame("Button", "NextPageButton", CC_ParentFrame)
NextPageButton:SetSize(150, 40)
NextPageButton:SetPoint("BOTTOMRIGHT", CC_ParentFrame, -30, 70)
NextPageButton:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
NextPageButton:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
NextPageButton:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
NextPageButton:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
NextPageButton:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
NextPageButton:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

local NextPageButton_text = NextPageButton:CreateFontString("NextPageButton_text")
NextPageButton_text:SetFont(newfont, 14, "OUTLINE")
NextPageButton_text:SetSize(100, 10)
NextPageButton_text:SetPoint("CENTER", 0, 0)
NextPageButton_text:SetText("Next Page")

--
-- CREATURES BELOW
--

local ObjNameBox = CreateFrame("EditBox", "ObjNameBox", CC_ParentFrame, "InputBoxTemplate")
ObjNameBox:SetSize(250, 50)
ObjNameBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -75)
ObjNameBox:ClearFocus()
ObjNameBox:SetAutoFocus(false)

local ObjNameBoxTitle = CC_ParentFrame:CreateFontString("ObjNameBoxTitle")
ObjNameBoxTitle:SetFont(newfont, 14, "OUTLINE")
ObjNameBoxTitle:SetSize(100, 16)
ObjNameBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 0, -70)
ObjNameBoxTitle:SetText("Name")

local ObjSubNameBox = CreateFrame("EditBox", "ObjSubNameBox", CC_ParentFrame, "InputBoxTemplate")
ObjSubNameBox:SetSize(250, 50)
ObjSubNameBox:SetPoint("TOPLEFT", CC_ParentFrame, 310, -75)
ObjSubNameBox:ClearFocus()
ObjSubNameBox:SetAutoFocus(false)


local ObjSubNameBoxTitle = CC_ParentFrame:CreateFontString("ObjSubNameBoxTitle")
ObjSubNameBoxTitle:SetFont(newfont, 14, "OUTLINE")
ObjSubNameBoxTitle:SetSize(100, 16)
ObjSubNameBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 290, -70)
ObjSubNameBoxTitle:SetText("Subname")

local FactionSlider = CreateFrame("Slider", "FactionSlider", CC_ParentFrame, "OptionsSliderTemplate") -- on value change it changes text below the slider to faction name listed in dh_creature_factions
FactionSlider:SetWidth(150)
FactionSlider:SetHeight(25)
FactionSlider:SetOrientation("HORIZONTAL")
FactionSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -150)
FactionSlider:SetValueStep(1)
FactionSlider:SetMinMaxValues(2, 20) -- max value should be total number of available factions, pull from sql and put into table (#table)
FactionSlider:SetValue(2)
FactionSlider:SetToplevel(true)

local FactionSliderTitle = CC_ParentFrame:CreateFontString("FactionSliderTitle")
FactionSliderTitle:SetFont(newfont, 14, "OUTLINE")
FactionSliderTitle:SetSize(250, 16)
FactionSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 150, -155)
FactionSliderTitle:SetText("Friendly (35)")

local ClassSlider = CreateFrame("Slider", "ClassSlider", CC_ParentFrame, "OptionsSliderTemplate") -- unit_class options, on value change, changes to 'Warrior - Health Only', 'Paladin - High Health, Less Mana', 'Rogue - Health Only', or 'Mage - Low Health, High Mana'
ClassSlider:SetWidth(150)
ClassSlider:SetHeight(25)
ClassSlider:SetOrientation("HORIZONTAL")
ClassSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -200)
ClassSlider:SetValueStep(1)
ClassSlider:SetMinMaxValues(0, #CreatureClasses)
ClassSlider:SetValue(0)
ClassSlider:SetToplevel(true)

local ClassSliderTitle = CC_ParentFrame:CreateFontString("ClassSliderTitle")
ClassSliderTitle:SetFont(newfont, 14, "OUTLINE")
ClassSliderTitle:SetSize(150, 16)
ClassSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 200, -205)
ClassSliderTitle:SetText("Warrior")

local LevelSlider = CreateFrame("Slider", "LevelSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
LevelSlider:SetWidth(150)
LevelSlider:SetHeight(25)
LevelSlider:SetOrientation("HORIZONTAL")
LevelSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -250)
LevelSlider:SetValueStep(1)
LevelSlider:SetMinMaxValues(40, 60)
LevelSlider:SetValue(40)
LevelSlider:SetToplevel(true)

local LevelSliderTitle = CC_ParentFrame:CreateFontString("LevelSliderTitle")
LevelSliderTitle:SetFont(newfont, 14, "OUTLINE")
LevelSliderTitle:SetSize(150, 16)
LevelSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 200, -255)
LevelSliderTitle:SetText("Level: 40")

local RankSlider = CreateFrame("Slider", "RankSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
RankSlider:SetWidth(150)
RankSlider:SetHeight(25)
RankSlider:SetOrientation("HORIZONTAL")
RankSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -305)
RankSlider:SetValueStep(1)
RankSlider:SetMinMaxValues(0, #CreatureRanks)
RankSlider:SetValue(0)
RankSlider:SetToplevel(true)

local RankSliderTitle = CC_ParentFrame:CreateFontString("RankSliderTitle")
RankSliderTitle:SetFont(newfont, 14, "OUTLINE")
RankSliderTitle:SetSize(150, 16)
RankSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 200, -305)
RankSliderTitle:SetText("Rank: Normal")

FlagCheckButton_VendorTitle = CC_ParentFrame:CreateFontString("FlagCheckButton_VendorTitle")
FlagCheckButton_VendorTitle:SetFont(newfont, 14, "OUTLINE")
FlagCheckButton_VendorTitle:SetSize(100, 16)
FlagCheckButton_VendorTitle:SetPoint("TOPLEFT", CC_ParentFrame, 470, -135)
FlagCheckButton_VendorTitle:SetText("Vendor")

FlagCheckButton_GossipTitle = CC_ParentFrame:CreateFontString("FlagCheckButton_GossipTitle")
FlagCheckButton_GossipTitle:SetFont(newfont, 14, "OUTLINE")
FlagCheckButton_GossipTitle:SetSize(100, 16)
FlagCheckButton_GossipTitle:SetPoint("TOPLEFT", CC_ParentFrame, 470, -210)
FlagCheckButton_GossipTitle:SetText("Gossip")

FlagCheckButton_QuestTitle = CC_ParentFrame:CreateFontString("FlagCheckButton_QuestTitle")
FlagCheckButton_QuestTitle:SetFont(newfont, 14, "OUTLINE")
FlagCheckButton_QuestTitle:SetSize(100, 16)
FlagCheckButton_QuestTitle:SetPoint("TOPLEFT", CC_ParentFrame, 470, -285)
FlagCheckButton_QuestTitle:SetText("Quest Giver")

local FlagCheckButton_Vendor = CreateFrame("CheckButton", "FlagCheckButton_Vendor", CC_ParentFrame, "UICheckButtonTemplate")
FlagCheckButton_Vendor:SetSize(35, 35)
FlagCheckButton_Vendor:SetPoint("TOPLEFT", CC_ParentFrame, 500, -150)
FlagCheckButton_Vendor.tooltip = "Check this box to make your NPC a vendor!"

local FlagCheckButton_Gossip = CreateFrame("CheckButton", "FlagCheckButton_Gossip", CC_ParentFrame, "UICheckButtonTemplate")
FlagCheckButton_Gossip:SetSize(35, 35)
FlagCheckButton_Gossip:SetPoint("TOPLEFT", CC_ParentFrame, 500, -225)
FlagCheckButton_Gossip.tooltip = "Check this box to make your NPC have a gossip menu!"

GossipMenu = {}


GossipMenu.button = CreateFrame("Button", "GossipMenuButton", CC_ParentFrame)
GossipMenu.button:SetSize(150, 50)
GossipMenu.button:SetPoint("TOPLEFT", CC_ParentFrame, 550, -215)
GossipMenu.button:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
GossipMenu.button:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
GossipMenu.button:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
GossipMenu.button:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
GossipMenu.button:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
GossipMenu.button:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

GossipMenu.title = GossipMenu.button:CreateFontString("GossipMenuButtonTitle")
GossipMenu.title:SetFont(newfont, 12, "OUTLINE")
GossipMenu.title:SetSize(150, 10)
GossipMenu.title:SetPoint("CENTER", 0, 0)
GossipMenu.title:SetText("Gossip Text")

GossipMenu.text = ""

AbilitiesDescription = {}

AbilitiesDescription.button = CreateFrame("Button", "AbilitiesDescriptionButton", CC_ParentFrame)
AbilitiesDescription.button:SetSize(150, 50)
AbilitiesDescription.button:SetPoint("TOPLEFT", CC_ParentFrame, 575, -375)
AbilitiesDescription.button:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
AbilitiesDescription.button:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
AbilitiesDescription.button:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
AbilitiesDescription.button:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
AbilitiesDescription.button:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
AbilitiesDescription.button:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

AbilitiesDescription.title = AbilitiesDescription.button:CreateFontString("AbilitiesDescriptionButtonTitle")
AbilitiesDescription.title:SetFont(newfont, 12, "OUTLINE")
AbilitiesDescription.title:SetSize(150, 10)
AbilitiesDescription.title:SetPoint("CENTER", 0, 0)
AbilitiesDescription.title:SetText("Abilities/Spells/Notes")

AbilitiesDescription.text = ""

local FlagCheckButton_Quest = CreateFrame("CheckButton", "FlagCheckButton_Quest", CC_ParentFrame, "UICheckButtonTemplate")
FlagCheckButton_Quest:SetSize(35, 35)
FlagCheckButton_Quest:SetPoint("TOPLEFT", CC_ParentFrame, 500, -300)
FlagCheckButton_Quest.tooltip = "Check this box to make your NPC a quest giver!"

local ModelSectionTitle = CC_ParentFrame:CreateFontString("ModelSectionTitle")
ModelSectionTitle:SetFont(newfont, 14, "OUTLINE")
ModelSectionTitle:SetSize(100, 16)
ModelSectionTitle:SetPoint("TOPLEFT", CC_ParentFrame, 15, -355)
ModelSectionTitle:SetText("Display IDs")

local Model01InputBox = CreateFrame("EditBox", "Model01InputBox", CC_ParentFrame, "InputBoxTemplate")
Model01InputBox:SetSize(250, 50)
Model01InputBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -375)
Model01InputBox:ClearFocus()
Model01InputBox:SetAutoFocus(false)
Model01InputBox:SetNumeric(true)

local Model02InputBox = CreateFrame("EditBox", "Model02InputBox", CC_ParentFrame, "InputBoxTemplate")
Model02InputBox:SetSize(250, 50)
Model02InputBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -425)
Model02InputBox:ClearFocus()
Model02InputBox:SetAutoFocus(false)
Model02InputBox:SetNumeric(true)

local Model03InputBox = CreateFrame("EditBox", "Model03InputBox", CC_ParentFrame, "InputBoxTemplate")
Model03InputBox:SetSize(250, 50)
Model03InputBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -475)
Model03InputBox:ClearFocus()
Model03InputBox:SetAutoFocus(false)
Model03InputBox:SetNumeric(true)

local Model04InputBox = CreateFrame("EditBox", "Model04InputBox", CC_ParentFrame, "InputBoxTemplate")
Model04InputBox:SetSize(250, 50)
Model04InputBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -525)
Model04InputBox:ClearFocus()
Model04InputBox:SetAutoFocus(false)
Model04InputBox:SetNumeric(true)


local EquipSectionTitle = CC_ParentFrame:CreateFontString("EquipSectionTitle")
EquipSectionTitle:SetFont(newfont, 14, "OUTLINE")
EquipSectionTitle:SetSize(100, 16)
EquipSectionTitle:SetPoint("TOPLEFT", CC_ParentFrame, 295, -355)
EquipSectionTitle:SetText("Main Hand")

local Equip01InputBox = CreateFrame("EditBox", "Equip01InputBox", CC_ParentFrame, "InputBoxTemplate")
Equip01InputBox:SetSize(250, 50)
Equip01InputBox:SetPoint("TOPLEFT", CC_ParentFrame, 310, -375)
Equip01InputBox:ClearFocus()
Equip01InputBox:SetAutoFocus(false)
Equip01InputBox:SetNumeric(true)

local EquipSectionTitle02 = CC_ParentFrame:CreateFontString("EquipSectionTitle02")
EquipSectionTitle02:SetFont(newfont, 14, "OUTLINE")
EquipSectionTitle02:SetSize(150, 16)
EquipSectionTitle02:SetPoint("TOPLEFT", CC_ParentFrame, 290, -415)
EquipSectionTitle02:SetText("Off Hand/Shield")

local Equip02InputBox = CreateFrame("EditBox", "Equip02InputBox", CC_ParentFrame, "InputBoxTemplate")
Equip02InputBox:SetSize(250, 50)
Equip02InputBox:SetPoint("TOPLEFT", CC_ParentFrame, 310, -425)
Equip02InputBox:ClearFocus()
Equip02InputBox:SetAutoFocus(false)
Equip02InputBox:SetNumeric(true)

local EquipInputRangedTitle = CC_ParentFrame:CreateFontString("EquipInputRangedTitle")
EquipInputRangedTitle:SetFont(newfont, 14, "OUTLINE")
EquipInputRangedTitle:SetSize(150, 16)
EquipInputRangedTitle:SetPoint("TOPLEFT", CC_ParentFrame, 290, -515)
EquipInputRangedTitle:SetText("Ranged Weapon")

local Equip03InputBox = CreateFrame("EditBox", "Equip03InputBox", CC_ParentFrame, "InputBoxTemplate")
Equip03InputBox:SetSize(250, 50)
Equip03InputBox:SetPoint("TOPLEFT", CC_ParentFrame, 310, -525)
Equip03InputBox:ClearFocus()
Equip03InputBox:SetAutoFocus(false)
Equip03InputBox:SetNumeric(true)

--
-- CREATURES ABOVE, QUESTS BELOW
--


QuestNameBox = CreateFrame("Button", "QuestNameBox", CC_ParentFrame)
QuestNameBox:SetSize(150, 50)
QuestNameBox:SetPoint("TOPLEFT", CC_ParentFrame, 20, -75)
QuestNameBox:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestNameBox:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestNameBox:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestNameBox:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestNameBox:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestNameBox:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

QuestNameBoxTitle = QuestNameBox:CreateFontString("QuestNameBoxTitle")
QuestNameBoxTitle:SetFont(newfont, 12, "OUTLINE")
QuestNameBoxTitle:SetSize(150, 10)
QuestNameBoxTitle:SetPoint("CENTER", 0, 0)
QuestNameBoxTitle:SetText("Quest Name")

QuestLogDescBox = CreateFrame("Button", "QuestLogDescBox", CC_ParentFrame)
QuestLogDescBox:SetSize(150, 50)
QuestLogDescBox:SetPoint("TOPLEFT", CC_ParentFrame, 300, -75)
QuestLogDescBox:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestLogDescBox:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestLogDescBox:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestLogDescBox:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestLogDescBox:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestLogDescBox:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

QuestLogDescBoxTitle = QuestLogDescBox:CreateFontString("QuestLogDescBoxTitle")
QuestLogDescBoxTitle:SetFont(newfont, 12, "OUTLINE")
QuestLogDescBoxTitle:SetSize(150, 10)
QuestLogDescBoxTitle:SetPoint("CENTER", 0, 0)
QuestLogDescBoxTitle:SetText("Quest Log Text")

QuestInquiryBox = CreateFrame("Button", "QuestInquiryBox", CC_ParentFrame)
QuestInquiryBox:SetSize(150, 50)
QuestInquiryBox:SetPoint("TOPLEFT", CC_ParentFrame, 20, -150)
QuestInquiryBox:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestInquiryBox:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestInquiryBox:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestInquiryBox:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestInquiryBox:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestInquiryBox:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

QuestInquiryBoxTitle = QuestInquiryBox:CreateFontString("QuestInquiryBoxTitle")
QuestInquiryBoxTitle:SetFont(newfont, 12, "OUTLINE")
QuestInquiryBoxTitle:SetSize(150, 10)
QuestInquiryBoxTitle:SetPoint("CENTER", 0, 0)
QuestInquiryBoxTitle:SetText("Inquiry Text")

QuestTurnInBox = CreateFrame("Button", "QuestTurnInBox", CC_ParentFrame)
QuestTurnInBox:SetSize(150, 50)
QuestTurnInBox:SetPoint("TOPLEFT", CC_ParentFrame, 300, -150)
QuestTurnInBox:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestTurnInBox:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestTurnInBox:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestTurnInBox:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestTurnInBox:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestTurnInBox:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

QuestTurnInBoxTitle = QuestTurnInBox:CreateFontString("QuestTurnInBoxTitle")
QuestTurnInBoxTitle:SetFont(newfont, 12, "OUTLINE")
QuestTurnInBoxTitle:SetSize(150, 10)
QuestTurnInBoxTitle:SetPoint("CENTER", 0, 0)
QuestTurnInBoxTitle:SetText("Turn-In Description")


CompleteTextDescBox = CreateFrame("Button", "CompleteTextDescBox", CC_ParentFrame)
CompleteTextDescBox:SetSize(150, 50)
CompleteTextDescBox:SetPoint("TOPLEFT", CC_ParentFrame, 580, -75)
CompleteTextDescBox:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
CompleteTextDescBox:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
CompleteTextDescBox:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
CompleteTextDescBox:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
CompleteTextDescBox:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
CompleteTextDescBox:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

CompleteTextDescBoxTitle = CompleteTextDescBox:CreateFontString("CompleteTextDescBoxTitle")
CompleteTextDescBoxTitle:SetFont(newfont, 12, "OUTLINE")
CompleteTextDescBoxTitle:SetSize(150, 10)
CompleteTextDescBoxTitle:SetPoint("CENTER", 0, 0)
CompleteTextDescBoxTitle:SetText("On Completion Text")

QuestTextBox = CreateFrame("Button", "QuestTextBox", CC_ParentFrame)
QuestTextBox:SetSize(150, 50)
QuestTextBox:SetPoint("TOPLEFT", CC_ParentFrame, 580, -150)
QuestTextBox:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestTextBox:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestTextBox:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestTextBox:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
QuestTextBox:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
QuestTextBox:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

QuestTextBoxTitle = QuestTextBox:CreateFontString("QuestTextBoxTitle")
QuestTextBoxTitle:SetFont(newfont, 12, "OUTLINE")
QuestTextBoxTitle:SetSize(150, 10)
QuestTextBoxTitle:SetPoint("CENTER", 0, 0)
QuestTextBoxTitle:SetText("NPC Quest Dialog")




WritingBox = CreateFrame("EditBox", "WritingBox", CC_WritingFrame)
WritingBox:SetSize(250, 150)
WritingBox:SetPoint("TOPLEFT", CC_WritingFrame, 80, -65)
WritingBox:ClearFocus()
WritingBox:SetAutoFocus(false)
WritingBox:SetFont(newfont, 14, "OUTLINE")







QuestStarterBox = CreateFrame("EditBox", "QuestStarterBox", CC_ParentFrame, "InputBoxTemplate")
QuestStarterBox:SetSize(250, 50)
QuestStarterBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -225)
QuestStarterBox:ClearFocus()
QuestStarterBox:SetAutoFocus(false)
QuestStarterBox:SetNumeric(true)

QuestStarterBoxTitle = CC_ParentFrame:CreateFontString("QuestStarterBoxTitle")
QuestStarterBoxTitle:SetFont(newfont, 14, "OUTLINE")
QuestStarterBoxTitle:SetSize(200, 16)
QuestStarterBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 5, -220)
QuestStarterBoxTitle:SetText("Quest Starter (Entry ID)")

QuestEnderBox = CreateFrame("EditBox", "QuestEnderBox", CC_ParentFrame, "InputBoxTemplate")
QuestEnderBox:SetSize(250, 50)
QuestEnderBox:SetPoint("TOPLEFT", CC_ParentFrame, 320, -225)
QuestEnderBox:ClearFocus()
QuestEnderBox:SetAutoFocus(false)
QuestEnderBox:SetNumeric(true)

QuestEnderBoxTitle = CC_ParentFrame:CreateFontString("QuestEnderBoxTitle")
QuestEnderBoxTitle:SetFont(newfont, 14, "OUTLINE")
QuestEnderBoxTitle:SetSize(200, 16)
QuestEnderBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 295, -220)
QuestEnderBoxTitle:SetText("Quest Ender (Entry ID)")

QuestMinLevelSlider = CreateFrame("Slider", "QuestMinLevelSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestMinLevelSlider:SetWidth(160)
QuestMinLevelSlider:SetHeight(25)
QuestMinLevelSlider:SetOrientation("HORIZONTAL")
QuestMinLevelSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -320)
QuestMinLevelSlider:SetValueStep(1)
QuestMinLevelSlider:SetMinMaxValues(40, 60)
QuestMinLevelSlider:SetValue(40)
QuestMinLevelSlider:SetToplevel(true)

QuestMinLevelSliderTitle = CC_ParentFrame:CreateFontString("QuestMinLevelSliderTitle")
QuestMinLevelSliderTitle:SetFont(newfont, 16, "OUTLINE")
QuestMinLevelSliderTitle:SetSize(200, 16)
QuestMinLevelSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 10, -300)
QuestMinLevelSliderTitle:SetText("Minimum Level: 40")

RequiredFactionIDBox_01 = CreateFrame("EditBox", "RequiredFactionIDBox_01", CC_ParentFrame, "InputBoxTemplate")
RequiredFactionIDBox_01:SetSize(250, 50)
RequiredFactionIDBox_01:SetPoint("TOPLEFT", CC_ParentFrame, 30, -400)
RequiredFactionIDBox_01:ClearFocus()
RequiredFactionIDBox_01:SetAutoFocus(false)
RequiredFactionIDBox_01:SetNumeric(true)

RequiredFactionIDBox_01Title = CC_ParentFrame:CreateFontString("RequiredFactionIDBox_01Title")
RequiredFactionIDBox_01Title:SetFont(newfont, 14, "OUTLINE")
RequiredFactionIDBox_01Title:SetSize(200, 16)
RequiredFactionIDBox_01Title:SetPoint("TOPLEFT", CC_ParentFrame, 0, -395)
RequiredFactionIDBox_01Title:SetText("Required Faction ID")

RequiredFactionIDBox_02 = CreateFrame("EditBox", "RequiredFactionIDBox_02", CC_ParentFrame, "InputBoxTemplate")
RequiredFactionIDBox_02:SetSize(250, 50)
RequiredFactionIDBox_02:SetPoint("TOPLEFT", CC_ParentFrame, 30, -475)
RequiredFactionIDBox_02:ClearFocus()
RequiredFactionIDBox_02:SetAutoFocus(false)
RequiredFactionIDBox_02:SetNumeric(true)

RequiredFactionIDBox_02Title = CC_ParentFrame:CreateFontString("RequiredFactionIDBox_02Title")
RequiredFactionIDBox_02Title:SetFont(newfont, 14, "OUTLINE")
RequiredFactionIDBox_02Title:SetSize(200, 16)
RequiredFactionIDBox_02Title:SetPoint("TOPLEFT", CC_ParentFrame, 0, -470)
RequiredFactionIDBox_02Title:SetText("Required Faction ID")

RequiredFactionRepBox_01 = CreateFrame("Slider", "RequiredFactionRepBox_01", CC_ParentFrame, "OptionsSliderTemplate") -- 
RequiredFactionRepBox_01:SetWidth(150)
RequiredFactionRepBox_01:SetHeight(25)
RequiredFactionRepBox_01:SetOrientation("HORIZONTAL")
RequiredFactionRepBox_01:SetPoint("TOPLEFT", CC_ParentFrame, 300, -410)
RequiredFactionRepBox_01:SetValueStep(1)
RequiredFactionRepBox_01:SetMinMaxValues(0, #ReputationRanks)
RequiredFactionRepBox_01:SetValue(0)
RequiredFactionRepBox_01:SetToplevel(true)

RequiredFactionRepBox_01Title = CC_ParentFrame:CreateFontString("RequiredFactionRepBox_01Title")
RequiredFactionRepBox_01Title:SetFont(newfont, 14, "OUTLINE")
RequiredFactionRepBox_01Title:SetSize(200, 16)
RequiredFactionRepBox_01Title:SetPoint("TOPLEFT", CC_ParentFrame, 280, -390)
RequiredFactionRepBox_01Title:SetText("<- Required Reputation")

RequiredFactionRepBox_02 = CreateFrame("Slider", "RequiredFactionRepBox_02", CC_ParentFrame, "OptionsSliderTemplate") -- 
RequiredFactionRepBox_02:SetWidth(150)
RequiredFactionRepBox_02:SetHeight(25)
RequiredFactionRepBox_02:SetOrientation("HORIZONTAL")
RequiredFactionRepBox_02:SetPoint("TOPLEFT", CC_ParentFrame, 300, -485)
RequiredFactionRepBox_02:SetValueStep(1)
RequiredFactionRepBox_02:SetMinMaxValues(0, #ReputationRanks)
RequiredFactionRepBox_02:SetValue(0)
RequiredFactionRepBox_02:SetToplevel(true)

RequiredFactionRepBox_02Title = CC_ParentFrame:CreateFontString("RequiredFactionRepBox_02Title")
RequiredFactionRepBox_02Title:SetFont(newfont, 14, "OUTLINE")
RequiredFactionRepBox_02Title:SetSize(200, 16)
RequiredFactionRepBox_02Title:SetPoint("TOPLEFT", CC_ParentFrame, 280, -465)
RequiredFactionRepBox_02Title:SetText("<- Required Reputation")

RequiredPlayerKillsSlider = CreateFrame("Slider", "RequiredPlayerKillsSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
RequiredPlayerKillsSlider:SetWidth(180)
RequiredPlayerKillsSlider:SetHeight(25)
RequiredPlayerKillsSlider:SetOrientation("HORIZONTAL")
RequiredPlayerKillsSlider:SetPoint("BOTTOMLEFT", CC_ParentFrame, 30, 100)
RequiredPlayerKillsSlider:SetValueStep(1)
RequiredPlayerKillsSlider:SetMinMaxValues(0, 20)
RequiredPlayerKillsSlider:SetValue(0)
RequiredPlayerKillsSlider:SetToplevel(true)

RequiredPlayerKillsSliderTitle = CC_ParentFrame:CreateFontString("RequiredPlayerKillsSliderTitle")
RequiredPlayerKillsSliderTitle:SetFont(newfont, 14, "OUTLINE")
RequiredPlayerKillsSliderTitle:SetSize(200, 16)
RequiredPlayerKillsSliderTitle:SetPoint("BOTTOMLEFT", CC_ParentFrame, -10, 125)
RequiredPlayerKillsSliderTitle:SetText("Player Kills: 0")

QFCB_StayAlive = CreateFrame("CheckButton", "QFCB_StayAlive", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_StayAlive:SetSize(35, 35)
QFCB_StayAlive:ClearAllPoints()
QFCB_StayAlive:SetPoint("TOPLEFT", CC_ParentFrame, 50, -550)
QFCB_StayAlive.tooltip = "Check this box to make your NPC a quest giver!"

QFCB_StayAlive_Title = CC_ParentFrame:CreateFontString("QFCB_StayAlive_Title")
QFCB_StayAlive_Title:SetFont(newfont, 12, "OUTLINE")
QFCB_StayAlive_Title:SetSize(200, 16)
QFCB_StayAlive_Title:SetPoint("TOPLEFT", CC_ParentFrame, -30, -535)
QFCB_StayAlive_Title:SetText("Stay Alive")

QFCB_Sharable = CreateFrame("CheckButton", "QFCB_Sharable", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_Sharable:SetSize(35, 35)
QFCB_Sharable:ClearAllPoints()
QFCB_Sharable:SetPoint("TOPLEFT", CC_ParentFrame, 140, -550)
QFCB_Sharable.tooltip = "Check this box to make your NPC a quest giver!"

QFCB_Sharable_Title = CC_ParentFrame:CreateFontString("QFCB_Sharable_Title")
QFCB_Sharable_Title:SetFont(newfont, 12, "OUTLINE")
QFCB_Sharable_Title:SetSize(200, 16)
QFCB_Sharable_Title:SetPoint("TOPLEFT", CC_ParentFrame, 60, -535)
QFCB_Sharable_Title:SetText("Shareable")

QFCB_Daily = CreateFrame("CheckButton", "QFCB_Daily", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_Daily:SetSize(35, 35)
QFCB_Daily:ClearAllPoints()
QFCB_Daily:SetPoint("TOPLEFT", CC_ParentFrame, 230, -550)
QFCB_Daily.tooltip = "Check this box to make your NPC a quest giver!"

QFCB_Daily_Title = CC_ParentFrame:CreateFontString("QFCB_Daily_Title")
QFCB_Daily_Title:SetFont(newfont, 12, "OUTLINE")
QFCB_Daily_Title:SetSize(200, 16)
QFCB_Daily_Title:SetPoint("TOPLEFT", CC_ParentFrame, 145, -535)
QFCB_Daily_Title:SetText("Daily")

RewardNextQuestBox = CreateFrame("EditBox", "RewardNextQuestBox", CC_ParentFrame, "InputBoxTemplate")
RewardNextQuestBox:SetSize(250, 50)
RewardNextQuestBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -75)
RewardNextQuestBox:ClearFocus()
RewardNextQuestBox:SetAutoFocus(false)
RewardNextQuestBox:SetNumeric(true)

RewardNextQuestBoxTitle = CC_ParentFrame:CreateFontString("RewardNextQuestBoxTitle")
RewardNextQuestBoxTitle:SetFont(newfont, 14, "OUTLINE")
RewardNextQuestBoxTitle:SetSize(100, 16)
RewardNextQuestBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 10, -70)
RewardNextQuestBoxTitle:SetText("Next Quest")

QuestStartingItemBox = CreateFrame("EditBox", "QuestStartingItemBox", CC_ParentFrame, "InputBoxTemplate")
QuestStartingItemBox:SetSize(250, 50)
QuestStartingItemBox:SetPoint("TOPLEFT", CC_ParentFrame, 310, -75)
QuestStartingItemBox:ClearFocus()
QuestStartingItemBox:SetAutoFocus(false)
QuestStartingItemBox:SetNumeric(true)

QuestStartingItemBoxTitle = CC_ParentFrame:CreateFontString("QuestStartingItemBoxTitle")
QuestStartingItemBoxTitle:SetFont(newfont, 14, "OUTLINE")
QuestStartingItemBoxTitle:SetSize(200, 16)
QuestStartingItemBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 290, -70)
QuestStartingItemBoxTitle:SetText("Starting Item (Entry ID)")

QuestSetItemRewardSlider = CreateFrame("Slider", "QuestSetItemRewardSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestSetItemRewardSlider:SetWidth(150)
QuestSetItemRewardSlider:SetHeight(25)
QuestSetItemRewardSlider:SetOrientation("HORIZONTAL")
QuestSetItemRewardSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -140)
QuestSetItemRewardSlider:SetValueStep(1)
QuestSetItemRewardSlider:SetMinMaxValues(1, 2)
QuestSetItemRewardSlider:SetValue(1)
QuestSetItemRewardSlider:SetToplevel(true)

QuestSetItemRewardSliderTitle = CC_ParentFrame:CreateFontString("QuestSetItemRewardSliderTitle")
QuestSetItemRewardSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestSetItemRewardSliderTitle:SetSize(200, 16)
QuestSetItemRewardSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 10, -125)
QuestSetItemRewardSliderTitle:SetText("Choose Item")

QuestRewardItemBox01 = CreateFrame("EditBox", "QuestRewardItemBox01", CC_ParentFrame, "InputBoxTemplate")
QuestRewardItemBox01:SetSize(250, 50)
QuestRewardItemBox01:SetPoint("TOPLEFT", CC_ParentFrame, 30, -230)
QuestRewardItemBox01:ClearFocus()
QuestRewardItemBox01:SetAutoFocus(false)
QuestRewardItemBox01:SetNumeric(true)

QuestRewardItemBox01Title = CC_ParentFrame:CreateFontString("QuestRewardItemBox01Title")
QuestRewardItemBox01Title:SetFont(newfont, 14, "OUTLINE")
QuestRewardItemBox01Title:SetSize(200, 16)
QuestRewardItemBox01Title:SetPoint("TOPLEFT", CC_ParentFrame, 0, -225)
QuestRewardItemBox01Title:SetText("Reward Item 1")

QuestRewardItemBox02 = CreateFrame("EditBox", "QuestRewardItemBox02", CC_ParentFrame, "InputBoxTemplate")
QuestRewardItemBox02:SetSize(250, 50)
QuestRewardItemBox02:SetPoint("TOPLEFT", CC_ParentFrame, 310, -230)
QuestRewardItemBox02:ClearFocus()
QuestRewardItemBox02:SetAutoFocus(false)
QuestRewardItemBox02:SetNumeric(true)

QuestRewardItemBox02Title = CC_ParentFrame:CreateFontString("QuestRewardItemBox02Title")
QuestRewardItemBox02Title:SetFont(newfont, 14, "OUTLINE")
QuestRewardItemBox02Title:SetSize(200, 16)
QuestRewardItemBox02Title:SetPoint("TOPLEFT", CC_ParentFrame, 290, -225)
QuestRewardItemBox02Title:SetText("Reward Item 2")

QuestRewardItemBox03 = CreateFrame("EditBox", "QuestRewardItemBox03", CC_ParentFrame, "InputBoxTemplate")
QuestRewardItemBox03:SetSize(250, 50)
QuestRewardItemBox03:SetPoint("TOPLEFT", CC_ParentFrame, 30, -380)
QuestRewardItemBox03:ClearFocus()
QuestRewardItemBox03:SetAutoFocus(false)
QuestRewardItemBox03:SetNumeric(true)

QuestRewardItemBox03Title = CC_ParentFrame:CreateFontString("QuestRewardItemBox03Title")
QuestRewardItemBox03Title:SetFont(newfont, 14, "OUTLINE")
QuestRewardItemBox03Title:SetSize(200, 16)
QuestRewardItemBox03Title:SetPoint("TOPLEFT", CC_ParentFrame, 0, -375)
QuestRewardItemBox03Title:SetText("Reward Item 3")

QuestRewardItemBox04 = CreateFrame("EditBox", "QuestRewardItemBox04", CC_ParentFrame, "InputBoxTemplate")
QuestRewardItemBox04:SetSize(250, 50)
QuestRewardItemBox04:SetPoint("TOPLEFT", CC_ParentFrame, 310, -380)
QuestRewardItemBox04:ClearFocus()
QuestRewardItemBox04:SetAutoFocus(false)
QuestRewardItemBox04:SetNumeric(true)

QuestRewardItemBox04Title = CC_ParentFrame:CreateFontString("QuestRewardItemBox04Title")
QuestRewardItemBox04Title:SetFont(newfont, 14, "OUTLINE")
QuestRewardItemBox04Title:SetSize(200, 16)
QuestRewardItemBox04Title:SetPoint("TOPLEFT", CC_ParentFrame, 290, -375)
QuestRewardItemBox04Title:SetText("Reward Item 4")

QuestRewardItemCount01Slider = CreateFrame("Slider", "QuestRewardItemCount01Slider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestRewardItemCount01Slider:SetWidth(150)
QuestRewardItemCount01Slider:SetHeight(25)
QuestRewardItemCount01Slider:SetOrientation("HORIZONTAL")
QuestRewardItemCount01Slider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -300)
QuestRewardItemCount01Slider:SetValueStep(1)
QuestRewardItemCount01Slider:SetMinMaxValues(0, 10)
QuestRewardItemCount01Slider:SetValue(0)
QuestRewardItemCount01Slider:SetToplevel(true)

QuestRewardItemCount01SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardItemCount01SliderTitle")
QuestRewardItemCount01SliderTitle:SetFont(newfont, 12, "OUTLINE")
QuestRewardItemCount01SliderTitle:SetSize(200, 16)
QuestRewardItemCount01SliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 0, -285)
QuestRewardItemCount01SliderTitle:SetText("Item Count: 0")

QuestRewardItemCount02Slider = CreateFrame("Slider", "QuestRewardItemCount02Slider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestRewardItemCount02Slider:SetWidth(150)
QuestRewardItemCount02Slider:SetHeight(25)
QuestRewardItemCount02Slider:SetOrientation("HORIZONTAL")
QuestRewardItemCount02Slider:SetPoint("TOPLEFT", CC_ParentFrame, 310, -300)
QuestRewardItemCount02Slider:SetValueStep(1)
QuestRewardItemCount02Slider:SetMinMaxValues(0, 10)
QuestRewardItemCount02Slider:SetValue(0)
QuestRewardItemCount02Slider:SetToplevel(true)

QuestRewardItemCount02SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardItemCount02SliderTitle")
QuestRewardItemCount02SliderTitle:SetFont(newfont, 12, "OUTLINE")
QuestRewardItemCount02SliderTitle:SetSize(200, 16)
QuestRewardItemCount02SliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 280, -285)
QuestRewardItemCount02SliderTitle:SetText("Item Count: 0")

QuestRewardItemCount03Slider = CreateFrame("Slider", "QuestRewardItemCount03Slider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestRewardItemCount03Slider:SetWidth(150)
QuestRewardItemCount03Slider:SetHeight(25)
QuestRewardItemCount03Slider:SetOrientation("HORIZONTAL")
QuestRewardItemCount03Slider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -445)
QuestRewardItemCount03Slider:SetValueStep(1)
QuestRewardItemCount03Slider:SetMinMaxValues(0, 10)
QuestRewardItemCount03Slider:SetValue(0)
QuestRewardItemCount03Slider:SetToplevel(true)

QuestRewardItemCount03SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardItemCount03SliderTitle")
QuestRewardItemCount03SliderTitle:SetFont(newfont, 12, "OUTLINE")
QuestRewardItemCount03SliderTitle:SetSize(200, 16)
QuestRewardItemCount03SliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 0, -430)
QuestRewardItemCount03SliderTitle:SetText("Item Count: 0")

QuestRewardItemCount04Slider = CreateFrame("Slider", "QuestRewardItemCount04Slider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestRewardItemCount04Slider:SetWidth(150)
QuestRewardItemCount04Slider:SetHeight(25)
QuestRewardItemCount04Slider:SetOrientation("HORIZONTAL")
QuestRewardItemCount04Slider:SetPoint("TOPLEFT", CC_ParentFrame, 310, -445)
QuestRewardItemCount04Slider:SetValueStep(1)
QuestRewardItemCount04Slider:SetMinMaxValues(0, 10)
QuestRewardItemCount04Slider:SetValue(0)
QuestRewardItemCount04Slider:SetToplevel(true)

QuestRewardItemCount04SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardItemCount04SliderTitle")
QuestRewardItemCount04SliderTitle:SetFont(newfont, 12, "OUTLINE")
QuestRewardItemCount04SliderTitle:SetSize(200, 16)
QuestRewardItemCount04SliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 280, -430)
QuestRewardItemCount04SliderTitle:SetText("Item Count: 0")

QuestRewardFactionRep01Slider = CreateFrame("EditBox", "QuestRewardFactionRep01Slider", CC_ParentFrame, "InputBoxTemplate")
QuestRewardFactionRep01Slider:SetSize(125, 50)
QuestRewardFactionRep01Slider:SetPoint("TOPRIGHT", CC_ParentFrame, -100, -75)
QuestRewardFactionRep01Slider:ClearFocus()
QuestRewardFactionRep01Slider:SetAutoFocus(false)
QuestRewardFactionRep01Slider:SetNumeric(true)

QuestRewardFactionRep01SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardFactionRep01SliderTitle")
QuestRewardFactionRep01SliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestRewardFactionRep01SliderTitle:SetSize(200, 16)
QuestRewardFactionRep01SliderTitle:SetPoint("TOPRIGHT", CC_ParentFrame, -100, -70)
QuestRewardFactionRep01SliderTitle:SetText("Faction")

QuestRewardFactionRep02Slider = CreateFrame("Slider", "QuestRewardFactionRep02Slider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestRewardFactionRep02Slider:SetWidth(150)
QuestRewardFactionRep02Slider:SetHeight(25)
QuestRewardFactionRep02Slider:SetOrientation("HORIZONTAL")
QuestRewardFactionRep02Slider:SetPoint("TOPRIGHT", CC_ParentFrame, -90, -150)
QuestRewardFactionRep02Slider:SetValueStep(1)
QuestRewardFactionRep02Slider:SetMinMaxValues(0, #ReputationRanks)
QuestRewardFactionRep02Slider:SetValue(0)
QuestRewardFactionRep02Slider:SetToplevel(true)

QuestRewardFactionRep02SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardFactionRep02SliderTitle")
QuestRewardFactionRep02SliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestRewardFactionRep02SliderTitle:SetSize(200, 16)
QuestRewardFactionRep02SliderTitle:SetPoint("TOPRIGHT", CC_ParentFrame, -90, -135)
QuestRewardFactionRep02SliderTitle:SetText("Rep Amount")

QuestRewardFactionRep03Slider = CreateFrame("EditBox", "QuestRewardFactionRep03Slider", CC_ParentFrame, "InputBoxTemplate")
QuestRewardFactionRep03Slider:SetSize(125, 50)
QuestRewardFactionRep03Slider:SetPoint("TOPRIGHT", CC_ParentFrame, -100, -230)
QuestRewardFactionRep03Slider:ClearFocus()
QuestRewardFactionRep03Slider:SetAutoFocus(false)
QuestRewardFactionRep03Slider:SetNumeric(true)


QuestRewardFactionRep03SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardFactionRep03SliderTitle")
QuestRewardFactionRep03SliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestRewardFactionRep03SliderTitle:SetSize(200, 16)
QuestRewardFactionRep03SliderTitle:SetPoint("TOPRIGHT", CC_ParentFrame, -100, -225)
QuestRewardFactionRep03SliderTitle:SetText("Faction")



QuestRewardFactionRep04Slider = CreateFrame("Slider", "QuestRewardFactionRep04Slider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestRewardFactionRep04Slider:SetWidth(150)
QuestRewardFactionRep04Slider:SetHeight(25)
QuestRewardFactionRep04Slider:SetOrientation("HORIZONTAL")
QuestRewardFactionRep04Slider:SetPoint("TOPRIGHT", CC_ParentFrame, -90, -305)
QuestRewardFactionRep04Slider:SetValueStep(1)
QuestRewardFactionRep04Slider:SetMinMaxValues(0, #ReputationRanks)
QuestRewardFactionRep04Slider:SetValue(0)
QuestRewardFactionRep04Slider:SetToplevel(true)

QuestRewardFactionRep04SliderTitle = CC_ParentFrame:CreateFontString("QuestRewardFactionRep04SliderTitle")
QuestRewardFactionRep04SliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestRewardFactionRep04SliderTitle:SetSize(200, 16)
QuestRewardFactionRep04SliderTitle:SetPoint("TOPRIGHT", CC_ParentFrame, -90, -290)
QuestRewardFactionRep04SliderTitle:SetText("Rep Amount")
-- insert objectives below

 QuestObjective01Box = CreateFrame("EditBox", "QuestObjective01Box", CC_ParentFrame, "InputBoxTemplate")
QuestObjective01Box:SetSize(250, 50)
QuestObjective01Box:SetPoint("TOPLEFT", CC_ParentFrame, 30, -150)
QuestObjective01Box:ClearFocus()
QuestObjective01Box:SetAutoFocus(false)
QuestObjective01Box:SetNumeric(true)

 QuestObjective01BoxTitle = CC_ParentFrame:CreateFontString("QuestObjective01BoxTitle")
QuestObjective01BoxTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective01BoxTitle:SetSize(100, 16)
QuestObjective01BoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 20, -145)
QuestObjective01BoxTitle:SetText("Objective 1")

 QuestObjective02Box = CreateFrame("EditBox", "QuestObjective02Box", CC_ParentFrame, "InputBoxTemplate")
QuestObjective02Box:SetSize(250, 50)
QuestObjective02Box:SetPoint("TOPLEFT", CC_ParentFrame, 310, -150)
QuestObjective02Box:ClearFocus()
QuestObjective02Box:SetAutoFocus(false)
QuestObjective02Box:SetNumeric(true)

 QuestObjective02BoxTitle = CC_ParentFrame:CreateFontString("QuestObjective02BoxTitle")
QuestObjective02BoxTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective02BoxTitle:SetSize(100, 16)
QuestObjective02BoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 300, -145)
QuestObjective02BoxTitle:SetText("Objective 2")

 QuestObjective03Box = CreateFrame("EditBox", "QuestObjective03Box", CC_ParentFrame, "InputBoxTemplate")
QuestObjective03Box:SetSize(250, 50)
QuestObjective03Box:SetPoint("TOPLEFT", CC_ParentFrame, 30, -350)
QuestObjective03Box:ClearFocus()
QuestObjective03Box:SetAutoFocus(false)
QuestObjective03Box:SetNumeric(true)

 QuestObjective03BoxTitle = CC_ParentFrame:CreateFontString("QuestObjective03BoxTitle")
QuestObjective03BoxTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective03BoxTitle:SetSize(100, 16)
QuestObjective03BoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 20, -345)
QuestObjective03BoxTitle:SetText("Objective 3")

 QuestObjective04Box = CreateFrame("EditBox", "QuestObjective04Box", CC_ParentFrame, "InputBoxTemplate")
QuestObjective04Box:SetSize(250, 50)
QuestObjective04Box:SetPoint("TOPLEFT", CC_ParentFrame, 310, -350)
QuestObjective04Box:ClearFocus()
QuestObjective04Box:SetAutoFocus(false)
QuestObjective04Box:SetNumeric(true)

 QuestObjective04BoxTitle = CC_ParentFrame:CreateFontString("QuestObjective04BoxTitle")
QuestObjective04BoxTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective04BoxTitle:SetSize(100, 16)
QuestObjective04BoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 300, -345)
QuestObjective04BoxTitle:SetText("Objective 4")

 QuestObjective01DeterminantSlider = CreateFrame("Slider", "QuestObjective01DeterminantSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective01DeterminantSlider:SetWidth(150)
QuestObjective01DeterminantSlider:SetHeight(25)
QuestObjective01DeterminantSlider:SetOrientation("HORIZONTAL")
QuestObjective01DeterminantSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -105)
QuestObjective01DeterminantSlider:SetValueStep(1)
QuestObjective01DeterminantSlider:SetMinMaxValues(1, 2)
QuestObjective01DeterminantSlider:SetValue(1)
QuestObjective01DeterminantSlider:SetToplevel(true)

 QuestObjective01DeterminantSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective01DeterminantSliderTitle")
QuestObjective01DeterminantSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective01DeterminantSliderTitle:SetSize(100, 16)
QuestObjective01DeterminantSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 55, -90)
QuestObjective01DeterminantSliderTitle:SetText("Collect Item")

 QuestObjective01CountSlider = CreateFrame("Slider", "QuestObjective01CountSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective01CountSlider:SetWidth(150)
QuestObjective01CountSlider:SetHeight(25)
QuestObjective01CountSlider:SetOrientation("HORIZONTAL")
QuestObjective01CountSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -220)
QuestObjective01CountSlider:SetValueStep(1)
QuestObjective01CountSlider:SetMinMaxValues(1, 12)
QuestObjective01CountSlider:SetValue(1)
QuestObjective01CountSlider:SetToplevel(true)

 QuestObjective01CountSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective01CountSliderTitle")
QuestObjective01CountSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective01CountSliderTitle:SetSize(100, 16)
QuestObjective01CountSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 55, -200)
QuestObjective01CountSliderTitle:SetText("Count: 1")

 QuestObjective02DeterminantSlider = CreateFrame("Slider", "QuestObjective02DeterminantSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective02DeterminantSlider:SetWidth(150)
QuestObjective02DeterminantSlider:SetHeight(25)
QuestObjective02DeterminantSlider:SetOrientation("HORIZONTAL")
QuestObjective02DeterminantSlider:SetPoint("TOPLEFT", CC_ParentFrame, 310, -105)
QuestObjective02DeterminantSlider:SetValueStep(1)
QuestObjective02DeterminantSlider:SetMinMaxValues(1, 2)
QuestObjective02DeterminantSlider:SetValue(1)
QuestObjective02DeterminantSlider:SetToplevel(true)

 QuestObjective02DeterminantSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective02DeterminantSliderTitle")
QuestObjective02DeterminantSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective02DeterminantSliderTitle:SetSize(100, 16)
QuestObjective02DeterminantSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 335, -90)
QuestObjective02DeterminantSliderTitle:SetText("Collect Item")

 QuestObjective02CountSlider = CreateFrame("Slider", "QuestObjective02CountSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective02CountSlider:SetWidth(150)
QuestObjective02CountSlider:SetHeight(25)
QuestObjective02CountSlider:SetOrientation("HORIZONTAL")
QuestObjective02CountSlider:SetPoint("TOPLEFT", CC_ParentFrame, 310, -220)
QuestObjective02CountSlider:SetValueStep(1)
QuestObjective02CountSlider:SetMinMaxValues(1, 12)
QuestObjective02CountSlider:SetValue(1)
QuestObjective02CountSlider:SetToplevel(true)

 QuestObjective02CountSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective02CountSliderTitle")
QuestObjective02CountSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective02CountSliderTitle:SetSize(100, 16)
QuestObjective02CountSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 335, -200)
QuestObjective02CountSliderTitle:SetText("Count: 1")

 QuestObjective03DeterminantSlider = CreateFrame("Slider", "QuestObjective03DeterminantSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective03DeterminantSlider:SetWidth(150)
QuestObjective03DeterminantSlider:SetHeight(25)
QuestObjective03DeterminantSlider:SetOrientation("HORIZONTAL")
QuestObjective03DeterminantSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -305)
QuestObjective03DeterminantSlider:SetValueStep(1)
QuestObjective03DeterminantSlider:SetMinMaxValues(1, 2)
QuestObjective03DeterminantSlider:SetValue(1)
QuestObjective03DeterminantSlider:SetToplevel(true)

 QuestObjective03DeterminantSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective03DeterminantSliderTitle")
QuestObjective03DeterminantSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective03DeterminantSliderTitle:SetSize(100, 16)
QuestObjective03DeterminantSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 55, -290)
QuestObjective03DeterminantSliderTitle:SetText("Collect Item")

 QuestObjective03CountSlider = CreateFrame("Slider", "QuestObjective03CountSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective03CountSlider:SetWidth(150)
QuestObjective03CountSlider:SetHeight(25)
QuestObjective03CountSlider:SetOrientation("HORIZONTAL")
QuestObjective03CountSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -420)
QuestObjective03CountSlider:SetValueStep(1)
QuestObjective03CountSlider:SetMinMaxValues(1, 12)
QuestObjective03CountSlider:SetValue(1)
QuestObjective03CountSlider:SetToplevel(true)

 QuestObjective03CountSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective03CountSliderTitle")
QuestObjective03CountSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective03CountSliderTitle:SetSize(100, 16)
QuestObjective03CountSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 55, -400)
QuestObjective03CountSliderTitle:SetText("Count: 1")

 QuestObjective04DeterminantSlider = CreateFrame("Slider", "QuestObjective04DeterminantSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective04DeterminantSlider:SetWidth(150)
QuestObjective04DeterminantSlider:SetHeight(25)
QuestObjective04DeterminantSlider:SetOrientation("HORIZONTAL")
QuestObjective04DeterminantSlider:SetPoint("TOPLEFT", CC_ParentFrame, 310, -305)
QuestObjective04DeterminantSlider:SetValueStep(1)
QuestObjective04DeterminantSlider:SetMinMaxValues(1, 2)
QuestObjective04DeterminantSlider:SetValue(1)
QuestObjective04DeterminantSlider:SetToplevel(true)

 QuestObjective04DeterminantSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective04DeterminantSliderTitle")
QuestObjective04DeterminantSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective04DeterminantSliderTitle:SetSize(100, 16)
QuestObjective04DeterminantSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 335, -290)
QuestObjective04DeterminantSliderTitle:SetText("Collect Item")

 QuestObjective04CountSlider = CreateFrame("Slider", "QuestObjective04CountSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
QuestObjective04CountSlider:SetWidth(150)
QuestObjective04CountSlider:SetHeight(25)
QuestObjective04CountSlider:SetOrientation("HORIZONTAL")
QuestObjective04CountSlider:SetPoint("TOPLEFT", CC_ParentFrame, 310, -420)
QuestObjective04CountSlider:SetValueStep(1)
QuestObjective04CountSlider:SetMinMaxValues(1, 12)
QuestObjective04CountSlider:SetValue(1)
QuestObjective04CountSlider:SetToplevel(true)

 QuestObjective04CountSliderTitle = CC_ParentFrame:CreateFontString("QuestObjective04CountSliderTitle")
QuestObjective04CountSliderTitle:SetFont(newfont, 14, "OUTLINE")
QuestObjective04CountSliderTitle:SetSize(200, 16)
QuestObjective04CountSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 285, -400)
QuestObjective04CountSliderTitle:SetText("Count: 1")


--

 QFCB_race_human = CreateFrame("CheckButton", "QFCB_race_human", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_human:SetSize(35, 35)
QFCB_race_human:ClearAllPoints()
QFCB_race_human:SetPoint("TOPLEFT", CC_ParentFrame, 50, -100)
QFCB_race_human.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_humanTitle = CC_ParentFrame:CreateFontString("QFCB_race_humanTitle")
QFCB_race_humanTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_humanTitle:SetSize(200, 16)
QFCB_race_humanTitle:SetPoint("TOPLEFT", CC_ParentFrame, -30, -85)
QFCB_race_humanTitle:SetText("Human")

 QFCB_race_orc = CreateFrame("CheckButton", "QFCB_race_orc", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_orc:SetSize(35, 35)
QFCB_race_orc:ClearAllPoints()
QFCB_race_orc:SetPoint("TOPLEFT", CC_ParentFrame, 110, -100)
QFCB_race_orc.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_orcTitle = CC_ParentFrame:CreateFontString("QFCB_race_orcTitle")
QFCB_race_orcTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_orcTitle:SetSize(200, 16)
QFCB_race_orcTitle:SetPoint("TOPLEFT", CC_ParentFrame, 30, -85)
QFCB_race_orcTitle:SetText("Orc")

 QFCB_race_dwarf = CreateFrame("CheckButton", "QFCB_race_dwarf", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_dwarf:SetSize(35, 35)
QFCB_race_dwarf:ClearAllPoints()
QFCB_race_dwarf:SetPoint("TOPLEFT", CC_ParentFrame, 170, -100)
QFCB_race_dwarf.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_dwarfTitle = CC_ParentFrame:CreateFontString("QFCB_race_dwarfTitle")
QFCB_race_dwarfTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_dwarfTitle:SetSize(200, 16)
QFCB_race_dwarfTitle:SetPoint("TOPLEFT", CC_ParentFrame, 90, -85)
QFCB_race_dwarfTitle:SetText("Dwarf")

 QFCB_race_nightelf = CreateFrame("CheckButton", "QFCB_race_nightelf", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_nightelf:SetSize(35, 35)
QFCB_race_nightelf:ClearAllPoints()
QFCB_race_nightelf:SetPoint("TOPLEFT", CC_ParentFrame, 230, -100)
QFCB_race_nightelf.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_nightelfTitle = CC_ParentFrame:CreateFontString("QFCB_race_nightelfTitle")
QFCB_race_nightelfTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_nightelfTitle:SetSize(200, 16)
QFCB_race_nightelfTitle:SetPoint("TOPLEFT", CC_ParentFrame, 150, -85)
QFCB_race_nightelfTitle:SetText("Night Elf")

 QFCB_race_undead = CreateFrame("CheckButton", "QFCB_race_undead", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_undead:SetSize(35, 35)
QFCB_race_undead:ClearAllPoints()
QFCB_race_undead:SetPoint("TOPLEFT", CC_ParentFrame, 290, -100)
QFCB_race_undead.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_undeadTitle = CC_ParentFrame:CreateFontString("QFCB_race_undeadTitle")
QFCB_race_undeadTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_undeadTitle:SetSize(200, 16)
QFCB_race_undeadTitle:SetPoint("TOPLEFT", CC_ParentFrame, 210, -85)
QFCB_race_undeadTitle:SetText("Forsaken")

 QFCB_race_tauren = CreateFrame("CheckButton", "QFCB_race_tauren", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_tauren:SetSize(35, 35)
QFCB_race_tauren:ClearAllPoints()
QFCB_race_tauren:SetPoint("TOPLEFT", CC_ParentFrame, 350, -100)
QFCB_race_tauren.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_taurenTitle = CC_ParentFrame:CreateFontString("QFCB_race_taurenTitle")
QFCB_race_taurenTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_taurenTitle:SetSize(200, 16)
QFCB_race_taurenTitle:SetPoint("TOPLEFT", CC_ParentFrame, 270, -85)
QFCB_race_taurenTitle:SetText("Tauren")

 QFCB_race_gnome = CreateFrame("CheckButton", "QFCB_race_gnome", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_gnome:SetSize(35, 35)
QFCB_race_gnome:ClearAllPoints()
QFCB_race_gnome:SetPoint("TOPLEFT", CC_ParentFrame, 410, -100)
QFCB_race_gnome.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_gnomeTitle = CC_ParentFrame:CreateFontString("QFCB_race_gnomeTitle")
QFCB_race_gnomeTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_gnomeTitle:SetSize(200, 16)
QFCB_race_gnomeTitle:SetPoint("TOPLEFT", CC_ParentFrame, 330, -85)
QFCB_race_gnomeTitle:SetText("Gnome")

 QFCB_race_troll = CreateFrame("CheckButton", "QFCB_race_troll", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_troll:SetSize(35, 35)
QFCB_race_troll:ClearAllPoints()
QFCB_race_troll:SetPoint("TOPLEFT", CC_ParentFrame, 470, -100)
QFCB_race_troll.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_trollTitle = CC_ParentFrame:CreateFontString("QFCB_race_trollTitle")
QFCB_race_trollTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_trollTitle:SetSize(200, 16)
QFCB_race_trollTitle:SetPoint("TOPLEFT", CC_ParentFrame, 390, -85)
QFCB_race_trollTitle:SetText("Troll")

 QFCB_race_bloodelf = CreateFrame("CheckButton", "QFCB_race_bloodelf", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_bloodelf:SetSize(35, 35)
QFCB_race_bloodelf:ClearAllPoints()
QFCB_race_bloodelf:SetPoint("TOPLEFT", CC_ParentFrame, 530, -100)
QFCB_race_bloodelf.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_bloodelfTitle = CC_ParentFrame:CreateFontString("QFCB_race_bloodelfTitle")
QFCB_race_bloodelfTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_bloodelfTitle:SetSize(200, 16)
QFCB_race_bloodelfTitle:SetPoint("TOPLEFT", CC_ParentFrame, 450, -85)
QFCB_race_bloodelfTitle:SetText("Blood Elf")

 QFCB_race_draenei = CreateFrame("CheckButton", "QFCB_race_draenei", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_race_draenei:SetSize(35, 35)
QFCB_race_draenei:ClearAllPoints()
QFCB_race_draenei:SetPoint("TOPLEFT", CC_ParentFrame, 590, -100)
QFCB_race_draenei.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_race_draeneiTitle = CC_ParentFrame:CreateFontString("QFCB_race_draeneiTitle")
QFCB_race_draeneiTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_race_draeneiTitle:SetSize(200, 16)
QFCB_race_draeneiTitle:SetPoint("TOPLEFT", CC_ParentFrame, 510, -85)
QFCB_race_draeneiTitle:SetText("Draenei")

--

 QFCB_class_warrior = CreateFrame("CheckButton", "QFCB_class_warrior", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_warrior:SetSize(35, 35)
QFCB_class_warrior:ClearAllPoints()
QFCB_class_warrior:SetPoint("TOPLEFT", CC_ParentFrame, 50, -150)
QFCB_class_warrior.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_class_warriorTitle = CC_ParentFrame:CreateFontString("QFCB_class_warriorTitle")
QFCB_class_warriorTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_warriorTitle:SetSize(200, 16)
QFCB_class_warriorTitle:SetPoint("TOPLEFT", CC_ParentFrame, -30, -135)
QFCB_class_warriorTitle:SetText("Warrior")

 QFCB_class_paladin = CreateFrame("CheckButton", "QFCB_class_paladin", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_paladin:SetSize(35, 35)
QFCB_class_paladin:ClearAllPoints()
QFCB_class_paladin:SetPoint("TOPLEFT", CC_ParentFrame, 110, -150)
QFCB_class_paladin.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_class_paladinTitle = CC_ParentFrame:CreateFontString("QFCB_class_paladinTitle")
QFCB_class_paladinTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_paladinTitle:SetSize(200, 16)
QFCB_class_paladinTitle:SetPoint("TOPLEFT", CC_ParentFrame, 30, -135)
QFCB_class_paladinTitle:SetText("Paladin")

 QFCB_class_hunter = CreateFrame("CheckButton", "QFCB_class_hunter", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_hunter:SetSize(35, 35)
QFCB_class_hunter:ClearAllPoints()
QFCB_class_hunter:SetPoint("TOPLEFT", CC_ParentFrame, 170, -150)
QFCB_class_hunter.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_class_hunterTitle = CC_ParentFrame:CreateFontString("QFCB_class_hunterTitle")
QFCB_class_hunterTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_hunterTitle:SetSize(200, 16)
QFCB_class_hunterTitle:SetPoint("TOPLEFT", CC_ParentFrame, 90, -135)
QFCB_class_hunterTitle:SetText("Hunter")

 QFCB_class_rogue = CreateFrame("CheckButton", "QFCB_class_rogue", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_rogue:SetSize(35, 35)
QFCB_class_rogue:ClearAllPoints()
QFCB_class_rogue:SetPoint("TOPLEFT", CC_ParentFrame, 230, -150)
QFCB_class_rogue.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_class_rogueTitle = CC_ParentFrame:CreateFontString("QFCB_class_rogueTitle")
QFCB_class_rogueTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_rogueTitle:SetSize(200, 16)
QFCB_class_rogueTitle:SetPoint("TOPLEFT", CC_ParentFrame, 150, -135)
QFCB_class_rogueTitle:SetText("Rogue")

 QFCB_class_priest = CreateFrame("CheckButton", "QFCB_class_priest", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_priest:SetSize(35, 35)
QFCB_class_priest:ClearAllPoints()
QFCB_class_priest:SetPoint("TOPLEFT", CC_ParentFrame, 290, -150)
QFCB_class_priest.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_class_priestTitle = CC_ParentFrame:CreateFontString("QFCB_class_priestTitle")
QFCB_class_priestTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_priestTitle:SetSize(200, 16)
QFCB_class_priestTitle:SetPoint("TOPLEFT", CC_ParentFrame, 210, -135)
QFCB_class_priestTitle:SetText("Priest")

 QFCB_class_shaman = CreateFrame("CheckButton", "QFCB_class_shaman", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_shaman:SetSize(35, 35)
QFCB_class_shaman:ClearAllPoints()
QFCB_class_shaman:SetPoint("TOPLEFT", CC_ParentFrame, 350, -150)
QFCB_class_shaman.tooltip = "Check this box to make your NPC a quest giver!"

 QFCB_class_shamanTitle = CC_ParentFrame:CreateFontString("QFCB_class_shamanTitle")
QFCB_class_shamanTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_shamanTitle:SetSize(200, 16)
QFCB_class_shamanTitle:SetPoint("TOPLEFT", CC_ParentFrame, 270, -135)
QFCB_class_shamanTitle:SetText("Shaman")

QFCB_class_mage = CreateFrame("CheckButton", "QFCB_class_mage", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_mage:SetSize(35, 35)
QFCB_class_mage:ClearAllPoints()
QFCB_class_mage:SetPoint("TOPLEFT", CC_ParentFrame, 410, -150)
QFCB_class_mage.tooltip = "Check this box to make your NPC a quest giver!"

QFCB_class_mageTitle = CC_ParentFrame:CreateFontString("QFCB_class_mageTitle")
QFCB_class_mageTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_mageTitle:SetSize(200, 16)
QFCB_class_mageTitle:SetPoint("TOPLEFT", CC_ParentFrame, 330, -135)
QFCB_class_mageTitle:SetText("Mage")

QFCB_class_warlock = CreateFrame("CheckButton", "QFCB_class_warlock", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_warlock:SetSize(35, 35)
QFCB_class_warlock:ClearAllPoints()
QFCB_class_warlock:SetPoint("TOPLEFT", CC_ParentFrame, 470, -150)
QFCB_class_warlock.tooltip = "Check this box to make your NPC a quest giver!"

QFCB_class_warlockTitle = CC_ParentFrame:CreateFontString("QFCB_class_warlockTitle")
QFCB_class_warlockTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_warlockTitle:SetSize(200, 16)
QFCB_class_warlockTitle:SetPoint("TOPLEFT", CC_ParentFrame, 390, -135)
QFCB_class_warlockTitle:SetText("Warlock")

QFCB_class_druid = CreateFrame("CheckButton", "QFCB_class_druid", CC_ParentFrame, "UICheckButtonTemplate")
QFCB_class_druid:SetSize(35, 35)
QFCB_class_druid:ClearAllPoints()
QFCB_class_druid:SetPoint("TOPLEFT", CC_ParentFrame, 530, -150)
QFCB_class_druid.tooltip = "Check this box to make your NPC a quest giver!"

QFCB_class_druidTitle = CC_ParentFrame:CreateFontString("QFCB_class_druidTitle")
QFCB_class_druidTitle:SetFont(newfont, 12, "OUTLINE")
QFCB_class_druidTitle:SetSize(200, 16)
QFCB_class_druidTitle:SetPoint("TOPLEFT", CC_ParentFrame, 450, -135)
QFCB_class_druidTitle:SetText("Druid")

--
-- QUESTS ABOVE, ITEMS BELOW
--

ItemNameBox = CreateFrame("EditBox", "ItemNameBox", CC_ParentFrame, "InputBoxTemplate")
ItemNameBox:SetSize(250, 50)
ItemNameBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -75)
ItemNameBox:ClearFocus()
ItemNameBox:SetAutoFocus(false)

ItemNameBoxTitle = CC_ParentFrame:CreateFontString("ItemNameBoxTitle")
ItemNameBoxTitle:SetFont(newfont, 14, "OUTLINE")
ItemNameBoxTitle:SetSize(100, 16)
ItemNameBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 15, -70)
ItemNameBoxTitle:SetText("Item Name")

ItemDescriptionBox = CreateFrame("EditBox", "ItemDescriptionBox", CC_ParentFrame, "InputBoxTemplate")
ItemDescriptionBox:SetSize(250, 50)
ItemDescriptionBox:SetPoint("TOPLEFT", CC_ParentFrame, 350, -75)
ItemDescriptionBox:ClearFocus()
ItemDescriptionBox:SetAutoFocus(false)

ItemDescriptionBoxTitle = CC_ParentFrame:CreateFontString("ItemDescriptionBoxTitle")
ItemDescriptionBoxTitle:SetFont(newfont, 14, "OUTLINE")
ItemDescriptionBoxTitle:SetSize(200, 16)
ItemDescriptionBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 305, -70)
ItemDescriptionBoxTitle:SetText("Item Description")

ItemClassSlider = CreateFrame("Slider", "ItemClassSlider", CC_ParentFrame, "OptionsSliderTemplate") -- on value change it changes text below the slider to faction name listed in dh_creature_factions
ItemClassSlider:SetWidth(150)
ItemClassSlider:SetHeight(25)
ItemClassSlider:SetOrientation("HORIZONTAL")
ItemClassSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -150)
ItemClassSlider:SetValueStep(1)
ItemClassSlider:SetMinMaxValues(0, #ItemClasses) -- max value should be total number of available factions, pull from sql and put into table (#table)
ItemClassSlider:SetValue(0)
ItemClassSlider:SetToplevel(true)

ItemClassSliderTitle = CC_ParentFrame:CreateFontString("ItemClassSliderTitle")
ItemClassSliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemClassSliderTitle:SetSize(150, 16)
ItemClassSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 165, -155)
ItemClassSliderTitle:SetText("Class")

ItemClassSlider02 = CreateFrame("Slider", "ItemClassSlider02", CC_ParentFrame, "OptionsSliderTemplate") -- on value change it changes text below the slider to faction name listed in dh_creature_factions
ItemClassSlider02:SetWidth(150)
ItemClassSlider02:SetHeight(25)
ItemClassSlider02:SetOrientation("HORIZONTAL")
ItemClassSlider02:SetPoint("TOPLEFT", CC_ParentFrame, 30, -200)
ItemClassSlider02:SetValueStep(1)
ItemClassSlider02:SetMinMaxValues(0, 20) -- max value should be total number of available factions, pull from sql and put into table (#table)
ItemClassSlider02:SetValue(0)
ItemClassSlider02:SetToplevel(true)

ItemClassSlider02Title = CC_ParentFrame:CreateFontString("ItemClassSlider02Title")
ItemClassSlider02Title:SetFont(newfont, 14, "OUTLINE")
ItemClassSlider02Title:SetSize(150, 16)
ItemClassSlider02Title:SetPoint("TOPLEFT", CC_ParentFrame, 165, -205)
ItemClassSlider02Title:SetText("Subclass")

DisplayIDBox = CreateFrame("EditBox", "DisplayIDBox", CC_ParentFrame, "InputBoxTemplate")
DisplayIDBox:SetSize(250, 50)
DisplayIDBox:SetPoint("TOPLEFT", CC_ParentFrame, 350, -175)
DisplayIDBox:ClearFocus()
DisplayIDBox:SetAutoFocus(false)
DisplayIDBox:SetNumeric(true)

DisplayIDBoxTitle = CC_ParentFrame:CreateFontString("DisplayIDBoxTitle")
DisplayIDBoxTitle:SetFont(newfont, 14, "OUTLINE")
DisplayIDBoxTitle:SetSize(100, 16)
DisplayIDBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 330, -170)
DisplayIDBoxTitle:SetText("Display ID")

ItemQualitySlider = CreateFrame("Slider", "ItemQualitySlider", CC_ParentFrame, "OptionsSliderTemplate") -- on value change it changes text below the slider to faction name listed in dh_creature_factions
ItemQualitySlider:SetWidth(150)
ItemQualitySlider:SetHeight(25)
ItemQualitySlider:SetOrientation("HORIZONTAL")
ItemQualitySlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -300)
ItemQualitySlider:SetValueStep(1)
ItemQualitySlider:SetMinMaxValues(0, #ItemQualities) -- max value should be total number of available factions, pull from sql and put into table (#table)
ItemQualitySlider:SetValue(0)
ItemQualitySlider:SetToplevel(true)

ItemQualitySliderTitle = CC_ParentFrame:CreateFontString("ItemQualitySliderTitle")
ItemQualitySliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemQualitySliderTitle:SetSize(150, 16)
ItemQualitySliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 165, -305)
ItemQualitySliderTitle:SetText("Quality")

ItemInventoryTypeSlider = CreateFrame("Slider", "ItemInventoryTypeSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemInventoryTypeSlider:SetWidth(150)
ItemInventoryTypeSlider:SetHeight(25)
ItemInventoryTypeSlider:SetOrientation("HORIZONTAL")
ItemInventoryTypeSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -250)
ItemInventoryTypeSlider:SetValueStep(1)
ItemInventoryTypeSlider:SetMinMaxValues(0, #InventoryTypes)
ItemInventoryTypeSlider:SetValue(0)
ItemInventoryTypeSlider:SetToplevel(true)

ItemInventoryTypeSliderTitle = CC_ParentFrame:CreateFontString("ItemInventoryTypeSliderTitle")
ItemInventoryTypeSliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemInventoryTypeSliderTitle:SetSize(150, 16)
ItemInventoryTypeSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 175, -255)
ItemInventoryTypeSliderTitle:SetText("Inventory Type")

ItemRequiredLevelSlider = CreateFrame("Slider", "ItemRequiredLevelSlider", CC_ParentFrame, "OptionsSliderTemplate") -- on value change it changes text below the slider to faction name listed in dh_creature_factions
ItemRequiredLevelSlider:SetWidth(150)
ItemRequiredLevelSlider:SetHeight(25)
ItemRequiredLevelSlider:SetOrientation("HORIZONTAL")
ItemRequiredLevelSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -350)
ItemRequiredLevelSlider:SetValueStep(1)
ItemRequiredLevelSlider:SetMinMaxValues(40, 60) -- max value should be total number of available factions, pull from sql and put into table (#table)
ItemRequiredLevelSlider:SetValue(40)
ItemRequiredLevelSlider:SetToplevel(true)

ItemRequiredLevelSliderTitle = CC_ParentFrame:CreateFontString("ItemRequiredLevelSliderTitle")
ItemRequiredLevelSliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemRequiredLevelSliderTitle:SetSize(150, 16)
ItemRequiredLevelSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 175, -355)
ItemRequiredLevelSliderTitle:SetText("Required Level: 40")

ItemRequiredFactionSlider = CreateFrame("Slider", "ItemRequiredFactionSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemRequiredFactionSlider:SetWidth(150)
ItemRequiredFactionSlider:SetHeight(25)
ItemRequiredFactionSlider:SetOrientation("HORIZONTAL")
ItemRequiredFactionSlider:SetPoint("TOPLEFT", CC_ParentFrame, 345, -250)
ItemRequiredFactionSlider:SetValueStep(1)
ItemRequiredFactionSlider:SetMinMaxValues(1, 20)
ItemRequiredFactionSlider:SetValue(1)
ItemRequiredFactionSlider:SetToplevel(true)

ItemRequiredFactionSliderTitle = CC_ParentFrame:CreateFontString("ItemRequiredFactionSliderTitle")
ItemRequiredFactionSliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemRequiredFactionSliderTitle:SetSize(200, 16)
ItemRequiredFactionSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 485, -255)
ItemRequiredFactionSliderTitle:SetText("Required Faction")

ItemRequiredFacRepSlider = CreateFrame("Slider", "ItemRequiredFacRepSlider", CC_ParentFrame, "OptionsSliderTemplate") -- on value change it changes text below the slider to faction name listed in dh_creature_factions
ItemRequiredFacRepSlider:SetWidth(150)
ItemRequiredFacRepSlider:SetHeight(25)
ItemRequiredFacRepSlider:SetOrientation("HORIZONTAL")
ItemRequiredFacRepSlider:SetPoint("TOPLEFT", CC_ParentFrame, 345, -300)
ItemRequiredFacRepSlider:SetValueStep(1)
ItemRequiredFacRepSlider:SetMinMaxValues(0, #ReputationRanks) -- max value should be total number of available factions, pull from sql and put into table (#table)
ItemRequiredFacRepSlider:SetValue(0)
ItemRequiredFacRepSlider:SetToplevel(true)

ItemRequiredFacRepSliderTitle = CC_ParentFrame:CreateFontString("ItemRequiredFacRepSliderTitle")
ItemRequiredFacRepSliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemRequiredFacRepSliderTitle:SetSize(200, 16)
ItemRequiredFacRepSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 490, -305)
ItemRequiredFacRepSliderTitle:SetText("Reputation: Hated")

ItemArmorBox = CreateFrame("EditBox", "ItemArmorBox", CC_ParentFrame, "InputBoxTemplate")
ItemArmorBox:SetSize(175, 50)
ItemArmorBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -250)
ItemArmorBox:ClearFocus()
ItemArmorBox:SetAutoFocus(false)
ItemArmorBox:SetNumeric(true)

ItemArmorBoxTitle = CC_ParentFrame:CreateFontString("ItemArmorBoxTitle")
ItemArmorBoxTitle:SetFont(newfont, 14, "OUTLINE")
ItemArmorBoxTitle:SetSize(100, 16)
ItemArmorBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 10, -245)
ItemArmorBoxTitle:SetText("Armor")

ItemBlockBox = CreateFrame("EditBox", "ItemBlockBox", CC_ParentFrame, "InputBoxTemplate")
ItemBlockBox:SetSize(175, 50)
ItemBlockBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -300)
ItemBlockBox:ClearFocus()
ItemBlockBox:SetAutoFocus(false)
ItemBlockBox:SetNumeric(true)

ItemBlockBoxTitle = CC_ParentFrame:CreateFontString("ItemBlockBoxTitle")
ItemBlockBoxTitle:SetFont(newfont, 14, "OUTLINE")
ItemBlockBoxTitle:SetSize(100, 16)
ItemBlockBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 10, -295)
ItemBlockBoxTitle:SetText("Block")

ItemBondingSlider = CreateFrame("Slider", "ItemBondingSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemBondingSlider:SetWidth(150)
ItemBondingSlider:SetHeight(25)
ItemBondingSlider:SetOrientation("HORIZONTAL")
ItemBondingSlider:SetPoint("TOPLEFT", CC_ParentFrame, 30, -400)
ItemBondingSlider:SetValueStep(1)
ItemBondingSlider:SetMinMaxValues(1, #ItemBondings)
ItemBondingSlider:SetValue(0)
ItemBondingSlider:SetToplevel(true)

ItemBondingSliderTitle = CC_ParentFrame:CreateFontString("ItemBondingSliderTitle")
ItemBondingSliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemBondingSliderTitle:SetSize(150, 16)
ItemBondingSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 165, -405)
ItemBondingSliderTitle:SetText("Bonding")

ItemDelayBox = CreateFrame("EditBox", "ItemDelayBox", CC_ParentFrame, "InputBoxTemplate")
ItemDelayBox:SetSize(175, 50)
ItemDelayBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -350)
ItemDelayBox:ClearFocus()
ItemDelayBox:SetAutoFocus(false)
ItemDelayBox:SetNumeric(true)

ItemDelayBoxTitle = CC_ParentFrame:CreateFontString("ItemDelayBoxTitle")
ItemDelayBoxTitle:SetFont(newfont, 14, "OUTLINE")
ItemDelayBoxTitle:SetSize(200, 16)
ItemDelayBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 10, -345)
ItemDelayBoxTitle:SetText("Delay (milliseconds)")

IFCB_conjured = CreateFrame("CheckButton", "IFCB_conjured", CC_ParentFrame, "UICheckButtonTemplate")
IFCB_conjured:SetSize(35, 35)
IFCB_conjured:ClearAllPoints()
IFCB_conjured:SetPoint("TOPLEFT", CC_ParentFrame, 50, -515)
IFCB_conjured.tooltip = "Check this box to make your NPC a quest giver!"

IFCB_conjuredTitle = CC_ParentFrame:CreateFontString("IFCB_conjuredTitle")
IFCB_conjuredTitle:SetFont(newfont, 12, "OUTLINE")
IFCB_conjuredTitle:SetSize(200, 16)
IFCB_conjuredTitle:SetPoint("TOPLEFT", CC_ParentFrame, -35, -500)
IFCB_conjuredTitle:SetText("Conjured")

IFCB_openable = CreateFrame("CheckButton", "IFCB_openable", CC_ParentFrame, "UICheckButtonTemplate")
IFCB_openable:SetSize(35, 35)
IFCB_openable:ClearAllPoints()
IFCB_openable:SetPoint("TOPLEFT", CC_ParentFrame, 130, -515)
IFCB_openable.tooltip = "Check this box to make your NPC a quest giver!"

IFCB_openableTitle = CC_ParentFrame:CreateFontString("IFCB_openableTitle")
IFCB_openableTitle:SetFont(newfont, 12, "OUTLINE")
IFCB_openableTitle:SetSize(200, 16)
IFCB_openableTitle:SetPoint("TOPLEFT", CC_ParentFrame, 50, -500)
IFCB_openableTitle:SetText("Openable")

IFCB_indestructible = CreateFrame("CheckButton", "IFCB_indestructible", CC_ParentFrame, "UICheckButtonTemplate")
IFCB_indestructible:SetSize(35, 35)
IFCB_indestructible:ClearAllPoints()
IFCB_indestructible:SetPoint("TOPLEFT", CC_ParentFrame, 210, -515)
IFCB_indestructible.tooltip = "Check this box to make your NPC a quest giver!"

IFCB_indestructibleTitle = CC_ParentFrame:CreateFontString("IFCB_indestructibleTitle")
IFCB_indestructibleTitle:SetFont(newfont, 12, "OUTLINE")
IFCB_indestructibleTitle:SetSize(200, 16)
IFCB_indestructibleTitle:SetPoint("TOPLEFT", CC_ParentFrame, 125, -500)
IFCB_indestructibleTitle:SetText("Indestructible")

IFCB_partyloot = CreateFrame("CheckButton", "IFCB_partyloot", CC_ParentFrame, "UICheckButtonTemplate")
IFCB_partyloot:SetSize(35, 35)
IFCB_partyloot:ClearAllPoints()
IFCB_partyloot:SetPoint("TOPLEFT", CC_ParentFrame, 50, -565)
IFCB_partyloot.tooltip = "Check this box to make your NPC a quest giver!"

IFCB_partylootTitle = CC_ParentFrame:CreateFontString("IFCB_partylootTitle")
IFCB_partylootTitle:SetFont(newfont, 12, "OUTLINE")
IFCB_partylootTitle:SetSize(200, 16)
IFCB_partylootTitle:SetPoint("TOPLEFT", CC_ParentFrame, -35, -550)
IFCB_partylootTitle:SetText("Party_Loot")

IFCB_unique = CreateFrame("CheckButton", "IFCB_unique", CC_ParentFrame, "UICheckButtonTemplate")
IFCB_unique:SetSize(35, 35)
IFCB_unique:ClearAllPoints()
IFCB_unique:SetPoint("TOPLEFT", CC_ParentFrame, 130, -565)
IFCB_unique.tooltip = "Check this box to make your NPC a quest giver!"

IFCB_uniqueTitle = CC_ParentFrame:CreateFontString("IFCB_uniqueTitle")
IFCB_uniqueTitle:SetFont(newfont, 12, "OUTLINE")
IFCB_uniqueTitle:SetSize(200, 16)
IFCB_uniqueTitle:SetPoint("TOPLEFT", CC_ParentFrame, 45, -550)
IFCB_uniqueTitle:SetText("Unique")

IFCB_accountbind = CreateFrame("CheckButton", "IFCB_accountbind", CC_ParentFrame, "UICheckButtonTemplate")
IFCB_accountbind:SetSize(35, 35)
IFCB_accountbind:ClearAllPoints()
IFCB_accountbind:SetPoint("TOPLEFT", CC_ParentFrame, 210, -565)
IFCB_accountbind.tooltip = "Check this box to make your NPC a quest giver!"

IFCB_accountbindTitle = CC_ParentFrame:CreateFontString("IFCB_accountbindTitle")
IFCB_accountbindTitle:SetFont(newfont, 12, "OUTLINE")
IFCB_accountbindTitle:SetSize(200, 16)
IFCB_accountbindTitle:SetPoint("TOPLEFT", CC_ParentFrame, 125, -550)
IFCB_accountbindTitle:SetText("Accountbound")

-- page 1 ^

ItemStatSlider01 = CreateFrame("Slider", "ItemStatSlider01", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemStatSlider01:SetWidth(150)
ItemStatSlider01:SetHeight(25)
ItemStatSlider01:SetOrientation("HORIZONTAL")
ItemStatSlider01:SetPoint("TOPLEFT", CC_ParentFrame, 30, -85)
ItemStatSlider01:SetValueStep(1)
ItemStatSlider01:SetMinMaxValues(0, #ItemStats)
ItemStatSlider01:SetValue(1)
ItemStatSlider01:SetToplevel(true)

ItemStatSlider01Title = CC_ParentFrame:CreateFontString("ItemStatSlider01Title")
ItemStatSlider01Title:SetFont(newfont, 12, "OUTLINE")
ItemStatSlider01Title:SetSize(200, 16)
ItemStatSlider01Title:SetPoint("TOPLEFT", CC_ParentFrame, 140, -90)
ItemStatSlider01Title:SetText("Stat")

ItemStatBox01 = CreateFrame("EditBox", "ItemStatBox01", CC_ParentFrame, "InputBoxTemplate")
ItemStatBox01:SetSize(250, 50)
ItemStatBox01:SetPoint("TOPLEFT", CC_ParentFrame, 310, -75)
ItemStatBox01:ClearFocus()
ItemStatBox01:SetAutoFocus(false)
ItemStatBox01:SetNumeric(true)

ItemStatBox01Title = CC_ParentFrame:CreateFontString("ItemStatBox01Title")
ItemStatBox01Title:SetFont(newfont, 14, "OUTLINE")
ItemStatBox01Title:SetSize(200, 16)
ItemStatBox01Title:SetPoint("TOPLEFT", CC_ParentFrame, 290, -60)
ItemStatBox01Title:SetText("Stat Amount")

--

ItemStatSlider02 = CreateFrame("Slider", "ItemStatSlider02", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemStatSlider02:SetWidth(150)
ItemStatSlider02:SetHeight(25)
ItemStatSlider02:SetOrientation("HORIZONTAL")
ItemStatSlider02:SetPoint("TOPLEFT", CC_ParentFrame, 30, -175)
ItemStatSlider02:SetValueStep(1)
ItemStatSlider02:SetMinMaxValues(0, #ItemStats)
ItemStatSlider02:SetValue(1)
ItemStatSlider02:SetToplevel(true)

ItemStatSlider02Title = CC_ParentFrame:CreateFontString("ItemStatSlider02Title")
ItemStatSlider02Title:SetFont(newfont, 12, "OUTLINE")
ItemStatSlider02Title:SetSize(200, 16)
ItemStatSlider02Title:SetPoint("TOPLEFT", CC_ParentFrame, 140, -180)
ItemStatSlider02Title:SetText("Stat")

ItemStatBox02 = CreateFrame("EditBox", "ItemStatBox02", CC_ParentFrame, "InputBoxTemplate")
ItemStatBox02:SetSize(250, 50)
ItemStatBox02:SetPoint("TOPLEFT", CC_ParentFrame, 310, -165)
ItemStatBox02:ClearFocus()
ItemStatBox02:SetAutoFocus(false)
ItemStatBox02:SetNumeric(true)

ItemStatBox02Title = CC_ParentFrame:CreateFontString("ItemStatBox02Title")
ItemStatBox02Title:SetFont(newfont, 14, "OUTLINE")
ItemStatBox02Title:SetSize(200, 16)
ItemStatBox02Title:SetPoint("TOPLEFT", CC_ParentFrame, 290, -150)
ItemStatBox02Title:SetText("Stat Amount")

--

ItemStatSlider03 = CreateFrame("Slider", "ItemStatSlider03", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemStatSlider03:SetWidth(150)
ItemStatSlider03:SetHeight(25)
ItemStatSlider03:SetOrientation("HORIZONTAL")
ItemStatSlider03:SetPoint("TOPLEFT", CC_ParentFrame, 30, -265)
ItemStatSlider03:SetValueStep(1)
ItemStatSlider03:SetMinMaxValues(0, #ItemStats)
ItemStatSlider03:SetValue(1)
ItemStatSlider03:SetToplevel(true)

ItemStatSlider03Title = CC_ParentFrame:CreateFontString("ItemStatSlider03Title")
ItemStatSlider03Title:SetFont(newfont, 12, "OUTLINE")
ItemStatSlider03Title:SetSize(200, 16)
ItemStatSlider03Title:SetPoint("TOPLEFT", CC_ParentFrame, 140, -270)
ItemStatSlider03Title:SetText("Stat")

ItemStatBox03 = CreateFrame("EditBox", "ItemStatBox03", CC_ParentFrame, "InputBoxTemplate")
ItemStatBox03:SetSize(250, 50)
ItemStatBox03:SetPoint("TOPLEFT", CC_ParentFrame, 310, -255)
ItemStatBox03:ClearFocus()
ItemStatBox03:SetAutoFocus(false)
ItemStatBox03:SetNumeric(true)

ItemStatBox03Title = CC_ParentFrame:CreateFontString("ItemStatBox03Title")
ItemStatBox03Title:SetFont(newfont, 14, "OUTLINE")
ItemStatBox03Title:SetSize(200, 16)
ItemStatBox03Title:SetPoint("TOPLEFT", CC_ParentFrame, 290, -240)
ItemStatBox03Title:SetText("Stat Amount")

--

ItemStatSlider04 = CreateFrame("Slider", "ItemStatSlider04", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemStatSlider04:SetWidth(150)
ItemStatSlider04:SetHeight(25)
ItemStatSlider04:SetOrientation("HORIZONTAL")
ItemStatSlider04:SetPoint("TOPLEFT", CC_ParentFrame, 30, -355)
ItemStatSlider04:SetValueStep(1)
ItemStatSlider04:SetMinMaxValues(0, #ItemStats)
ItemStatSlider04:SetValue(1)
ItemStatSlider04:SetToplevel(true)

ItemStatSlider04Title = CC_ParentFrame:CreateFontString("ItemStatSlider04Title")
ItemStatSlider04Title:SetFont(newfont, 12, "OUTLINE")
ItemStatSlider04Title:SetSize(200, 16)
ItemStatSlider04Title:SetPoint("TOPLEFT", CC_ParentFrame, 140, -360)
ItemStatSlider04Title:SetText("Stat")

ItemStatBox04 = CreateFrame("EditBox", "ItemStatBox04", CC_ParentFrame, "InputBoxTemplate")
ItemStatBox04:SetSize(250, 50)
ItemStatBox04:SetPoint("TOPLEFT", CC_ParentFrame, 310, -345)
ItemStatBox04:ClearFocus()
ItemStatBox04:SetAutoFocus(false)
ItemStatBox04:SetNumeric(true)

ItemStatBox04Title = CC_ParentFrame:CreateFontString("ItemStatBox04Title")
ItemStatBox04Title:SetFont(newfont, 14, "OUTLINE")
ItemStatBox04Title:SetSize(200, 16)
ItemStatBox04Title:SetPoint("TOPLEFT", CC_ParentFrame, 290, -330)
ItemStatBox04Title:SetText("Stat Amount")

--

ItemStatSlider05 = CreateFrame("Slider", "ItemStatSlider05", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemStatSlider05:SetWidth(150)
ItemStatSlider05:SetHeight(25)
ItemStatSlider05:SetOrientation("HORIZONTAL")
ItemStatSlider05:SetPoint("TOPLEFT", CC_ParentFrame, 30, -445)
ItemStatSlider05:SetValueStep(1)
ItemStatSlider05:SetMinMaxValues(0, #ItemStats)
ItemStatSlider05:SetValue(1)
ItemStatSlider05:SetToplevel(true)

ItemStatSlider05Title = CC_ParentFrame:CreateFontString("ItemStatSlider05Title")
ItemStatSlider05Title:SetFont(newfont, 12, "OUTLINE")
ItemStatSlider05Title:SetSize(200, 16)
ItemStatSlider05Title:SetPoint("TOPLEFT", CC_ParentFrame, 140, -450)
ItemStatSlider05Title:SetText("Stat")

ItemStatBox05 = CreateFrame("EditBox", "ItemStatBox05", CC_ParentFrame, "InputBoxTemplate")
ItemStatBox05:SetSize(250, 50)
ItemStatBox05:SetPoint("TOPLEFT", CC_ParentFrame, 310, -435)
ItemStatBox05:ClearFocus()
ItemStatBox05:SetAutoFocus(false)
ItemStatBox05:SetNumeric(true)

ItemStatBox05Title = CC_ParentFrame:CreateFontString("ItemStatBox05Title")
ItemStatBox05Title:SetFont(newfont, 14, "OUTLINE")
ItemStatBox05Title:SetSize(200, 16)
ItemStatBox05Title:SetPoint("TOPLEFT", CC_ParentFrame, 290, -420)
ItemStatBox05Title:SetText("Stat Amount")

--

ItemResistanceBoxes = {} -- odd numbers are the box, even numbers are title

ItemResistanceBoxes[1] = CreateFrame("EditBox", "ItemResistanceBoxes[1]", CC_ParentFrame, "InputBoxTemplate")
ItemResistanceBoxes[1]:SetSize(200, 50)
ItemResistanceBoxes[1]:SetPoint("TOPLEFT", CC_ParentFrame, 600, -75)
ItemResistanceBoxes[1]:ClearFocus()
ItemResistanceBoxes[1]:SetAutoFocus(false)
ItemResistanceBoxes[1]:SetNumeric(true)

ItemResistanceBoxes[2] = CC_ParentFrame:CreateFontString("ItemResistanceBoxes[2]")
ItemResistanceBoxes[2]:SetFont(newfont, 14, "OUTLINE")
ItemResistanceBoxes[2]:SetSize(200, 16)
ItemResistanceBoxes[2]:SetPoint("TOPLEFT", CC_ParentFrame, 580, -60)
ItemResistanceBoxes[2]:SetText("Arcane Resistance")

ItemResistanceBoxes[3] = CreateFrame("EditBox", "ItemResistanceBoxes[3]", CC_ParentFrame, "InputBoxTemplate")
ItemResistanceBoxes[3]:SetSize(200, 50)
ItemResistanceBoxes[3]:SetPoint("TOPLEFT", CC_ParentFrame, 600, -145)
ItemResistanceBoxes[3]:ClearFocus()
ItemResistanceBoxes[3]:SetAutoFocus(false)
ItemResistanceBoxes[3]:SetNumeric(true)

ItemResistanceBoxes[4] = CC_ParentFrame:CreateFontString("ItemResistanceBoxes[4]")
ItemResistanceBoxes[4]:SetFont(newfont, 14, "OUTLINE")
ItemResistanceBoxes[4]:SetSize(200, 16)
ItemResistanceBoxes[4]:SetPoint("TOPLEFT", CC_ParentFrame, 580, -140)
ItemResistanceBoxes[4]:SetText("Fire Resistance")

ItemResistanceBoxes[5] = CreateFrame("EditBox", "ItemResistanceBoxes[5]", CC_ParentFrame, "InputBoxTemplate")
ItemResistanceBoxes[5]:SetSize(200, 50)
ItemResistanceBoxes[5]:SetPoint("TOPLEFT", CC_ParentFrame, 600, -215)
ItemResistanceBoxes[5]:ClearFocus()
ItemResistanceBoxes[5]:SetAutoFocus(false)
ItemResistanceBoxes[5]:SetNumeric(true)

ItemResistanceBoxes[6] = CC_ParentFrame:CreateFontString("ItemResistanceBoxes[6]")
ItemResistanceBoxes[6]:SetFont(newfont, 14, "OUTLINE")
ItemResistanceBoxes[6]:SetSize(200, 16)
ItemResistanceBoxes[6]:SetPoint("TOPLEFT", CC_ParentFrame, 580, -200)
ItemResistanceBoxes[6]:SetText("Nature Resistance")

ItemResistanceBoxes[7] = CreateFrame("EditBox", "ItemResistanceBoxes[7]", CC_ParentFrame, "InputBoxTemplate")
ItemResistanceBoxes[7]:SetSize(200, 50)
ItemResistanceBoxes[7]:SetPoint("TOPLEFT", CC_ParentFrame, 600, -285)
ItemResistanceBoxes[7]:ClearFocus()
ItemResistanceBoxes[7]:SetAutoFocus(false)
ItemResistanceBoxes[7]:SetNumeric(true)

ItemResistanceBoxes[8] = CC_ParentFrame:CreateFontString("ItemResistanceBoxes[8]")
ItemResistanceBoxes[8]:SetFont(newfont, 14, "OUTLINE")
ItemResistanceBoxes[8]:SetSize(200, 16)
ItemResistanceBoxes[8]:SetPoint("TOPLEFT", CC_ParentFrame, 580, -270)
ItemResistanceBoxes[8]:SetText("Frost Resistance")

ItemResistanceBoxes[9] = CreateFrame("EditBox", "ItemResistanceBoxes[9]", CC_ParentFrame, "InputBoxTemplate")
ItemResistanceBoxes[9]:SetSize(200, 50)
ItemResistanceBoxes[9]:SetPoint("TOPLEFT", CC_ParentFrame, 600, -355)
ItemResistanceBoxes[9]:ClearFocus()
ItemResistanceBoxes[9]:SetAutoFocus(false)
ItemResistanceBoxes[9]:SetNumeric(true)

ItemResistanceBoxes[10] = CC_ParentFrame:CreateFontString("ItemResistanceBoxes[10]")
ItemResistanceBoxes[10]:SetFont(newfont, 14, "OUTLINE")
ItemResistanceBoxes[10]:SetSize(200, 16)
ItemResistanceBoxes[10]:SetPoint("TOPLEFT", CC_ParentFrame, 580, -340)
ItemResistanceBoxes[10]:SetText("Shadow Resistance")


-- items page 3

ItemMaterialSlider = CreateFrame("Slider", "ItemMaterialSlider", CC_ParentFrame, "OptionsSliderTemplate") -- 
ItemMaterialSlider:SetWidth(175)
ItemMaterialSlider:SetHeight(25)
ItemMaterialSlider:SetOrientation("HORIZONTAL")
ItemMaterialSlider:SetPoint("TOPLEFT", CC_ParentFrame, 20, -85)
ItemMaterialSlider:SetValueStep(1)
ItemMaterialSlider:SetMinMaxValues(1, 7)
ItemMaterialSlider:SetValue(1)
ItemMaterialSlider:SetToplevel(true)

ItemMaterialSliderTitle = CC_ParentFrame:CreateFontString("ItemMaterialSliderTitle")
ItemMaterialSliderTitle:SetFont(newfont, 14, "OUTLINE")
ItemMaterialSliderTitle:SetSize(200, 16)
ItemMaterialSliderTitle:SetPoint("TOPLEFT", CC_ParentFrame, 140, -90)
ItemMaterialSliderTitle:SetText("Material")

ItemMinDamageBox = CreateFrame("EditBox", "ItemMinDamageBox", CC_ParentFrame, "InputBoxTemplate")
ItemMinDamageBox:SetSize(175, 50)
ItemMinDamageBox:SetPoint("TOPLEFT", CC_ParentFrame, 30, -175)
ItemMinDamageBox:ClearFocus()
ItemMinDamageBox:SetAutoFocus(false)
ItemMinDamageBox:SetNumeric(true)

ItemMinDamageBoxTitle = CC_ParentFrame:CreateFontString("ItemMinDamageBoxTitle")
ItemMinDamageBoxTitle:SetFont(newfont, 14, "OUTLINE")
ItemMinDamageBoxTitle:SetSize(200, 16)
ItemMinDamageBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 1, -160)
ItemMinDamageBoxTitle:SetText("Minimum Damage")

ItemMaxDamageBox = CreateFrame("EditBox", "ItemMaxDamageBox", CC_ParentFrame, "InputBoxTemplate")
ItemMaxDamageBox:SetSize(175, 50)
ItemMaxDamageBox:SetPoint("TOPLEFT", CC_ParentFrame, 230, -175)
ItemMaxDamageBox:ClearFocus()
ItemMaxDamageBox:SetAutoFocus(false)
ItemMaxDamageBox:SetNumeric(true)

ItemMaxDamageBoxTitle = CC_ParentFrame:CreateFontString("ItemMaxDamageBoxTitle")
ItemMaxDamageBoxTitle:SetFont(newfont, 14, "OUTLINE")
ItemMaxDamageBoxTitle:SetSize(200, 16)
ItemMaxDamageBoxTitle:SetPoint("TOPLEFT", CC_ParentFrame, 210, -160)
ItemMaxDamageBoxTitle:SetText("Maximum Damage")



--
ItemSpellBox = {}
ItemSpellBox[3] = {}

ItemSpellBox[2] = CC_ParentFrame:CreateFontString("ItemSpellBox01Title")
ItemSpellBox[2]:SetFont(newfont, 14, "OUTLINE")
ItemSpellBox[2]:SetSize(200, 60)
ItemSpellBox[2]:SetPoint("TOPLEFT", CC_ParentFrame, 420, -100)
ItemSpellBox[2]:SetText("")

ItemSpellBox[3] = CreateFrame("Button", "ItemSpellBox02", CC_ParentFrame)
ItemSpellBox[3]:SetSize(150, 50)
ItemSpellBox[3]:SetPoint("TOPLEFT", CC_ParentFrame, 450, -175)
ItemSpellBox[3]:SetNormalTexture("Interface/Doomhammer/ContentCreatorAtlas")
ItemSpellBox[3]:GetNormalTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
ItemSpellBox[3]:SetHighlightTexture("Interface/Doomhammer/ContentCreatorAtlas")
ItemSpellBox[3]:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 1606, 34, 403, 129))
ItemSpellBox[3]:SetPushedTexture("Interface/Doomhammer/ContentCreatorAtlas")
ItemSpellBox[3]:GetPushedTexture():SetTexCoord(CoordCalc(2048, 1606, 310, 403, 130))

ItemSpellBox[3].title = ItemSpellBox[3]:CreateFontString("ItemSpellBox03Title")
ItemSpellBox[3].title:SetFont(newfont, 12, "OUTLINE")
ItemSpellBox[3].title:SetSize(150, 10)
ItemSpellBox[3].title:SetPoint("CENTER", 0, 0)
ItemSpellBox[3].title:SetText("Spells/Effects")

ItemSpellBox[3].effects = ""


--
-- ITEMS ABOVE, COMMANDS BELOW
--

local CommandsTitle = CC_ParentFrame:CreateFontString("CommandsTitle")
CommandsTitle:SetFont(newfont, 14, "OUTLINE")
CommandsTitle:SetSize(100, 16)
CommandsTitle:SetPoint("TOPLEFT", CC_ParentFrame, 15, -70)
CommandsTitle:SetText("Commands")

local Commands_identify = CC_ParentFrame:CreateFontString("Commands_identify")
Commands_identify:SetFont(newfont, 14, "OUTLINE")
Commands_identify:SetSize(600, 16)
Commands_identify:SetPoint("TOPLEFT", CC_ParentFrame, 20, -100)
Commands_identify:SetText("'.npc identify' - Displays the display ID and entry ID of the target creature in the chat box.")

--
--
--

-- above this is all the buttons and boxes n shit
--

AIO.SavePosition(CC_ParentFrame)

CC_ParentFrame:Hide()
CC_ConfirmFrame:Hide()
CC_WritingFrame:Hide()



-- tabs
--

local tab_creature = CreateFrame("Button", "tab_creature", CC_ParentFrame, "CharacterFrameTabButtonTemplate")
tab_creature:SetID(1)
tab_creature:SetText("Creatures")

tab_creature:SetPoint("TOPLEFT", CC_ParentFrame, "BOTTOMLEFT", 4, 4)

local tab_quest = CreateFrame("Button", "tab_quest", CC_ParentFrame, "CharacterFrameTabButtonTemplate")
tab_quest:SetID(2)
tab_quest:SetText("Quests")

tab_quest:SetPoint("TOPLEFT", CC_ParentFrame, "BOTTOMLEFT", 80, 4)

local tab_items = CreateFrame("Button", "tab_items", CC_ParentFrame, "CharacterFrameTabButtonTemplate")
tab_items:SetID(3)
tab_items:SetText("Items")

tab_items:SetPoint("TOPLEFT", CC_ParentFrame, "BOTTOMLEFT", 146, 4)

local tab_commands = CreateFrame("Button", "tab_commands", CC_ParentFrame, "CharacterFrameTabButtonTemplate")
tab_commands:SetID(4)
tab_commands:SetText("Commands")

tab_commands:SetPoint("TOPLEFT", CC_ParentFrame, "BOTTOMLEFT", 200, 4)

--
--

function ContentCreatorHandlers.HideFrame(player)
CC_ConfirmFrame:Hide()
CC_ParentFrame:Hide()
CC_WritingFrame:Hide()

end

function hide_creatures()
NextPageButton:Show()

ObjNameBox:Hide()
ObjNameBoxTitle:Hide()
FactionSlider:Hide()
FactionSliderTitle:Hide()
ClassSlider:Hide()
ClassSliderTitle:Hide()
LevelSlider:Hide()
LevelSliderTitle:Hide()
RankSlider:Hide()
RankSliderTitle:Hide()
FlagCheckButton_Vendor:Hide()
FlagCheckButton_Gossip:Hide()
GossipMenu.button:Hide()
AbilitiesDescription.button:Hide()
FlagCheckButton_Quest:Hide()
ModelSectionTitle:Hide()
Model01InputBox:Hide()
Model02InputBox:Hide()
Model03InputBox:Hide()
Model04InputBox:Hide()
EquipSectionTitle:Hide()
Equip01InputBox:Hide()
Equip02InputBox:Hide()
Equip03InputBox:Hide()
ObjSubNameBoxTitle:Hide()
ObjSubNameBox:Hide()
FlagCheckButton_VendorTitle:Hide()
FlagCheckButton_QuestTitle:Hide()
FlagCheckButton_GossipTitle:Hide()
EquipSectionTitle02:Hide()
EquipInputRangedTitle:Hide()
end

function show_creatures()
CC_UIMode = 1
CC_ParentFrame.Background:SetTexCoord(CoordCalc(2048, 0, 0, 1024, 768))
NextPageButton:Hide()
ObjNameBox:Show()
ObjNameBoxTitle:Show()
FactionSlider:Show()
FactionSliderTitle:Show()
ClassSlider:Show()
ClassSliderTitle:Show()
LevelSlider:Show()
LevelSliderTitle:Show()
RankSlider:Show()
RankSliderTitle:Show()
FlagCheckButton_Vendor:Show()
FlagCheckButton_Gossip:Show()
GossipMenu.button:Show()
AbilitiesDescription.button:Show()
FlagCheckButton_Quest:Show()
ModelSectionTitle:Show()
Model01InputBox:Show()
Model02InputBox:Show()
Model03InputBox:Show()
Model04InputBox:Show()
EquipSectionTitle:Show()
Equip01InputBox:Show()
Equip02InputBox:Show()
Equip03InputBox:Show()
ObjSubNameBoxTitle:Show()
ObjSubNameBox:Show()
FlagCheckButton_VendorTitle:Show()
FlagCheckButton_QuestTitle:Show()
FlagCheckButton_GossipTitle:Show()
EquipSectionTitle02:Show()
EquipInputRangedTitle:Show()
end






function show_quests_page1()
	if CC_UIMode ~= 2 then
	
		QFCB_race_human:SetChecked(false)
	
		QFCB_race_orc:SetChecked(false)
	
		QFCB_race_dwarf:SetChecked(false)
	
		QFCB_race_nightelf:SetChecked(false)
	
		QFCB_race_undead:SetChecked(false)
	
		QFCB_race_tauren:SetChecked(false)
	
		QFCB_race_gnome:SetChecked(false)
	
		QFCB_race_troll:SetChecked(false)
	
		QFCB_race_bloodelf:SetChecked(false)
	
		QFCB_race_draenei:SetChecked(false)
	
		QFCB_class_warrior:SetChecked(false)
	
		QFCB_class_paladin:SetChecked(false)
	
		QFCB_class_hunter:SetChecked(false)
	
		QFCB_class_rogue:SetChecked(false)
	
		QFCB_class_priest:SetChecked(false)
	
		QFCB_class_shaman:SetChecked(false)
	
		QFCB_class_mage:SetChecked(false)
	
		QFCB_class_warlock:SetChecked(false)
	
		QFCB_class_druid:SetChecked(false)
	end

CC_UIMode = 2

CC_ParentFrame.Background:SetTexCoord(CoordCalc(2048, 0, 1280, 1024, 768))

QuestNameBox:Show()
QuestNameBoxTitle:Show()
QuestLogDescBox:Show()
QuestLogDescBoxTitle:Show()
CompleteTextDescBox:Show()
QuestTextBox:Show()
QuestInquiryBox:Show()
QuestInquiryBoxTitle:Show()
QuestTurnInBox:Show()
QuestTurnInBoxTitle:Show()
QuestStarterBox:Show()
QuestStarterBoxTitle:Show()
QuestEnderBox:Show()
QuestEnderBoxTitle:Show()
RequiredFactionIDBox_01:Show()
RequiredFactionIDBox_01Title:Show()
RequiredFactionIDBox_02:Show()
RequiredFactionIDBox_02Title:Show()
RequiredFactionRepBox_01:Show()
RequiredFactionRepBox_01Title:Show()
RequiredFactionRepBox_02:Show()
RequiredFactionRepBox_02Title:Show()
QFCB_StayAlive:Show()
QFCB_StayAlive_Title:Show()
QFCB_Sharable:Show()
QFCB_Sharable_Title:Show()
QFCB_Daily:Show()
QFCB_Daily_Title:Show()
QuestMinLevelSliderTitle:Show()
QuestMinLevelSlider:Show()


end

function hide_quests_page1()

QuestNameBox:Hide()
QuestNameBoxTitle:Hide()
QuestLogDescBox:Hide()
QuestLogDescBoxTitle:Hide()
QuestInquiryBox:Hide()
QuestInquiryBoxTitle:Hide()
QuestTurnInBox:Hide()
QuestTurnInBoxTitle:Hide()
CompleteTextDescBox:Hide()
QuestTextBox:Hide()
QuestStarterBox:Hide()
QuestStarterBoxTitle:Hide()
QuestEnderBox:Hide()
QuestEnderBoxTitle:Hide()
RequiredFactionIDBox_01:Hide()
RequiredFactionIDBox_01Title:Hide()
RequiredFactionIDBox_02:Hide()
RequiredFactionIDBox_02Title:Hide()
RequiredFactionRepBox_01:Hide()
RequiredFactionRepBox_01Title:Hide()
RequiredFactionRepBox_02:Hide()
RequiredFactionRepBox_02Title:Hide()
QFCB_StayAlive:Hide()
QFCB_StayAlive_Title:Hide()
QFCB_Sharable:Hide()
QFCB_Sharable_Title:Hide()
QFCB_Daily:Hide()
QFCB_Daily_Title:Hide()
QuestMinLevelSliderTitle:Hide()
QuestMinLevelSlider:Hide()

end

function show_quests_page2()

QuestStartingItemBox:Show()
QuestStartingItemBoxTitle:Show()
RewardNextQuestBox:Show()
RewardNextQuestBoxTitle:Show()
QuestSetItemRewardSlider:Show()
QuestSetItemRewardSliderTitle:Show()
QuestRewardItemBox02:Show()
QuestRewardItemBox02Title:Show()
QuestRewardItemBox01:Show()
QuestRewardItemBox01Title:Show()
QuestRewardItemBox03:Show()
QuestRewardItemBox03Title:Show()
QuestRewardItemBox04:Show()
QuestRewardItemBox04Title:Show()
QuestRewardItemCount01Slider:Show()
QuestRewardItemCount01SliderTitle:Show()
QuestRewardItemCount02Slider:Show()
QuestRewardItemCount02SliderTitle:Show()
QuestRewardItemCount03Slider:Show()
QuestRewardItemCount03SliderTitle:Show()
QuestRewardItemCount04Slider:Show()
QuestRewardItemCount04SliderTitle:Show()
QuestRewardFactionRep01Slider:Show()
QuestRewardFactionRep01SliderTitle:Show()
QuestRewardFactionRep02Slider:Show()
QuestRewardFactionRep02SliderTitle:Show()
QuestRewardFactionRep03Slider:Show()
QuestRewardFactionRep03SliderTitle:Show()
QuestRewardFactionRep04Slider:Show()
QuestRewardFactionRep04SliderTitle:Show()
end

function hide_quests_page2()

QuestStartingItemBox:Hide()
QuestStartingItemBoxTitle:Hide()
RewardNextQuestBox:Hide()
RewardNextQuestBoxTitle:Hide()
QuestSetItemRewardSlider:Hide()
QuestSetItemRewardSliderTitle:Hide()
QuestRewardItemBox02:Hide()
QuestRewardItemBox02Title:Hide()
QuestRewardItemBox01:Hide()
QuestRewardItemBox01Title:Hide()
QuestRewardItemBox03:Hide()
QuestRewardItemBox03Title:Hide()
QuestRewardItemBox04:Hide()
QuestRewardItemBox04Title:Hide()
QuestRewardItemCount01Slider:Hide()
QuestRewardItemCount01SliderTitle:Hide()
QuestRewardItemCount02Slider:Hide()
QuestRewardItemCount02SliderTitle:Hide()
QuestRewardItemCount03Slider:Hide()
QuestRewardItemCount03SliderTitle:Hide()
QuestRewardItemCount04Slider:Hide()
QuestRewardItemCount04SliderTitle:Hide()
QuestRewardFactionRep01Slider:Hide()
QuestRewardFactionRep01SliderTitle:Hide()
QuestRewardFactionRep02Slider:Hide()
QuestRewardFactionRep02SliderTitle:Hide()
QuestRewardFactionRep03Slider:Hide()
QuestRewardFactionRep03SliderTitle:Hide()
QuestRewardFactionRep04Slider:Hide()
QuestRewardFactionRep04SliderTitle:Hide()
end

function hide_quests_page4()
QFCB_race_human:Hide()
QFCB_race_humanTitle:Hide()
QFCB_race_orc:Hide()
QFCB_race_orcTitle:Hide()
QFCB_race_dwarf:Hide()
QFCB_race_dwarfTitle:Hide()
QFCB_race_nightelf:Hide()
QFCB_race_nightelfTitle:Hide()
QFCB_race_undead:Hide()
QFCB_race_undeadTitle:Hide()
QFCB_race_tauren:Hide()
QFCB_race_taurenTitle:Hide()
QFCB_race_gnome:Hide()
QFCB_race_gnomeTitle:Hide()
QFCB_race_troll:Hide()
QFCB_race_trollTitle:Hide()
QFCB_race_bloodelf:Hide()
QFCB_race_bloodelfTitle:Hide()
QFCB_race_draenei:Hide()
QFCB_race_draeneiTitle:Hide()
QFCB_class_warrior:Hide()
QFCB_class_warriorTitle:Hide()
QFCB_class_paladin:Hide()
QFCB_class_paladinTitle:Hide()
QFCB_class_hunter:Hide()
QFCB_class_hunterTitle:Hide()
QFCB_class_rogue:Hide()
QFCB_class_rogueTitle:Hide()
QFCB_class_priest:Hide()
QFCB_class_priestTitle:Hide()
QFCB_class_shaman:Hide()
QFCB_class_shamanTitle:Hide()
QFCB_class_mage:Hide()
QFCB_class_mageTitle:Hide()
QFCB_class_warlock:Hide()
QFCB_class_warlockTitle:Hide()
QFCB_class_druid:Hide()
QFCB_class_druidTitle:Hide()


	

end

function show_quests_page4()
QFCB_race_human:Show()
QFCB_race_humanTitle:Show()
QFCB_race_orc:Show()
QFCB_race_orcTitle:Show()
QFCB_race_dwarf:Show()
QFCB_race_dwarfTitle:Show()
QFCB_race_nightelf:Show()
QFCB_race_nightelfTitle:Show()
QFCB_race_undead:Show()
QFCB_race_undeadTitle:Show()
QFCB_race_tauren:Show()
QFCB_race_taurenTitle:Show()
QFCB_race_gnome:Show()
QFCB_race_gnomeTitle:Show()
QFCB_race_troll:Show()
QFCB_race_trollTitle:Show()
QFCB_race_bloodelf:Show()
QFCB_race_bloodelfTitle:Show()
QFCB_race_draenei:Show()
QFCB_race_draeneiTitle:Show()
QFCB_class_warrior:Show()
QFCB_class_warriorTitle:Show()
QFCB_class_paladin:Show()
QFCB_class_paladinTitle:Show()
QFCB_class_hunter:Show()
QFCB_class_hunterTitle:Show()
QFCB_class_rogue:Show()
QFCB_class_rogueTitle:Show()
QFCB_class_priest:Show()
QFCB_class_priestTitle:Show()
QFCB_class_shaman:Show()
QFCB_class_shamanTitle:Show()
QFCB_class_mage:Show()
QFCB_class_mageTitle:Show()
QFCB_class_warlock:Show()
QFCB_class_warlockTitle:Show()
QFCB_class_druid:Show()
QFCB_class_druidTitle:Show()
end

function show_quests_page3()
QuestObjective01Box:Show()
QuestObjective01BoxTitle:Show()
QuestObjective02Box:Show()
QuestObjective02BoxTitle:Show()
QuestObjective03Box:Show()
QuestObjective03BoxTitle:Show()
QuestObjective04Box:Show()
QuestObjective04BoxTitle:Show()
QuestObjective02DeterminantSlider:Show()
QuestObjective02DeterminantSliderTitle:Show()
QuestObjective02CountSlider:Show()
QuestObjective02CountSliderTitle:Show()
QuestObjective03DeterminantSlider:Show()
QuestObjective03DeterminantSliderTitle:Show()
QuestObjective03CountSlider:Show()
QuestObjective03CountSliderTitle:Show()
QuestObjective01DeterminantSlider:Show()
QuestObjective01DeterminantSliderTitle:Show()
QuestObjective01CountSlider:Show()
QuestObjective01CountSliderTitle:Show()
QuestObjective04DeterminantSlider:Show()
QuestObjective04DeterminantSliderTitle:Show()
QuestObjective04CountSlider:Show()
QuestObjective04CountSliderTitle:Show()
RequiredPlayerKillsSlider:Show()
RequiredPlayerKillsSliderTitle:Show()
end

function hide_quests_page3()
QuestObjective01Box:Hide()
QuestObjective01BoxTitle:Hide()
QuestObjective02Box:Hide()
QuestObjective02BoxTitle:Hide()
QuestObjective03Box:Hide()
QuestObjective03BoxTitle:Hide()
QuestObjective04Box:Hide()
QuestObjective04BoxTitle:Hide()
QuestObjective02DeterminantSlider:Hide()
QuestObjective02DeterminantSliderTitle:Hide()
QuestObjective02CountSlider:Hide()
QuestObjective02CountSliderTitle:Hide()
QuestObjective03DeterminantSlider:Hide()
QuestObjective03DeterminantSliderTitle:Hide()
QuestObjective03CountSlider:Hide()
QuestObjective03CountSliderTitle:Hide()
QuestObjective01DeterminantSlider:Hide()
QuestObjective01DeterminantSliderTitle:Hide()
QuestObjective01CountSlider:Hide()
QuestObjective01CountSliderTitle:Hide()
QuestObjective04DeterminantSlider:Hide()
QuestObjective04DeterminantSliderTitle:Hide()
QuestObjective04CountSlider:Hide()
QuestObjective04CountSliderTitle:Hide()
RequiredPlayerKillsSlider:Hide()
RequiredPlayerKillsSliderTitle:Hide()


end

function hide_quests()
hide_quests_page1()
hide_quests_page2()
hide_quests_page4()
hide_quests_page3()
end

function hide_items_page1()
ItemNameBox:Hide()
ItemNameBoxTitle:Hide()
ItemDescriptionBox:Hide()
ItemDescriptionBoxTitle:Hide()
ItemClassSlider:Hide()
ItemClassSliderTitle:Hide()
ItemClassSlider02:Hide()
ItemClassSlider02Title:Hide()
DisplayIDBox:Hide()
DisplayIDBoxTitle:Hide()
ItemQualitySlider:Hide()
ItemQualitySliderTitle:Hide()
ItemInventoryTypeSlider:Hide()
ItemInventoryTypeSliderTitle:Hide()
ItemRequiredLevelSlider:Hide()
ItemRequiredLevelSliderTitle:Hide()
ItemRequiredFactionSlider:Hide()
ItemRequiredFactionSliderTitle:Hide()
ItemRequiredFacRepSlider:Hide()
ItemRequiredFacRepSliderTitle:Hide()

ItemBondingSlider:Hide()
ItemBondingSliderTitle:Hide()

IFCB_conjured:Hide()
IFCB_conjuredTitle:Hide()
IFCB_openable:Hide()
IFCB_openableTitle:Hide()
IFCB_indestructible:Hide()
IFCB_indestructibleTitle:Hide()
IFCB_partyloot:Hide()
IFCB_partylootTitle:Hide()
IFCB_unique:Hide()
IFCB_uniqueTitle:Hide()
IFCB_accountbind:Hide()
IFCB_accountbindTitle:Hide()

end

function show_items_page1()
	if CC_UIMode ~= 3 then
		QFCB_race_human:SetChecked(false)
	
		QFCB_race_orc:SetChecked(false)
	
		QFCB_race_dwarf:SetChecked(false)
	
		QFCB_race_nightelf:SetChecked(false)
	
		QFCB_race_undead:SetChecked(false)
	
		QFCB_race_tauren:SetChecked(false)
	
		QFCB_race_gnome:SetChecked(false)
	
		QFCB_race_troll:SetChecked(false)
	
		QFCB_race_bloodelf:SetChecked(false)
	
		QFCB_race_draenei:SetChecked(false)
	
		QFCB_class_warrior:SetChecked(false)
	
		QFCB_class_paladin:SetChecked(false)
	
		QFCB_class_hunter:SetChecked(false)
	
		QFCB_class_rogue:SetChecked(false)
	
		QFCB_class_priest:SetChecked(false)
	
		QFCB_class_shaman:SetChecked(false)
	
		QFCB_class_mage:SetChecked(false)
	
		QFCB_class_warlock:SetChecked(false)
	
		QFCB_class_druid:SetChecked(false)
		end

CC_UIMode = 3

CC_ParentFrame.Background:SetTexCoord(CoordCalc(2048, 1024, 670, 1024, 768))

ItemNameBox:Show()
ItemNameBoxTitle:Show()
ItemDescriptionBox:Show()
ItemDescriptionBoxTitle:Show()
ItemClassSlider:Show()
ItemClassSliderTitle:Show()
ItemClassSlider02:Show()
ItemClassSlider02Title:Show()
DisplayIDBox:Show()
DisplayIDBoxTitle:Show()
ItemQualitySlider:Show()
ItemQualitySliderTitle:Show()
ItemInventoryTypeSlider:Show()
ItemInventoryTypeSliderTitle:Show()
ItemRequiredLevelSlider:Show()
ItemRequiredLevelSliderTitle:Show()
ItemRequiredFactionSlider:Show()
ItemRequiredFactionSliderTitle:Show()
ItemRequiredFacRepSlider:Show()
ItemRequiredFacRepSliderTitle:Show()

ItemBondingSlider:Show()
ItemBondingSliderTitle:Show()

IFCB_conjured:Show()
IFCB_conjuredTitle:Show()
IFCB_openable:Show()
IFCB_openableTitle:Show()
IFCB_indestructible:Show()
IFCB_indestructibleTitle:Show()
IFCB_partyloot:Show()
IFCB_partylootTitle:Show()
IFCB_unique:Show()
IFCB_uniqueTitle:Show()
IFCB_accountbind:Show()
IFCB_accountbindTitle:Show()

	

end

function show_items_page2()
ItemStatSlider01:Show()
ItemStatSlider01Title:Show()
ItemStatSlider02:Show()
ItemStatSlider02Title:Show()
ItemStatSlider03:Show()
ItemStatSlider03Title:Show()
ItemStatSlider04:Show()
ItemStatSlider04Title:Show()
ItemStatSlider05:Show()
ItemStatSlider05Title:Show()
ItemStatBox01:Show()
ItemStatBox01Title:Show()
ItemStatBox02:Show()
ItemStatBox02Title:Show()
ItemStatBox03:Show()
ItemStatBox03Title:Show()
ItemStatBox04:Show()
ItemStatBox04Title:Show()
ItemStatBox05:Show()
ItemStatBox05Title:Show()
ItemResistanceBoxes[1]:Show()
ItemResistanceBoxes[2]:Show()
ItemResistanceBoxes[3]:Show()
ItemResistanceBoxes[4]:Show()
ItemResistanceBoxes[5]:Show()
ItemResistanceBoxes[6]:Show()
ItemResistanceBoxes[7]:Show()
ItemResistanceBoxes[8]:Show()
ItemResistanceBoxes[9]:Show()
ItemResistanceBoxes[10]:Show()
end

function hide_items_page2()
ItemStatSlider01:Hide()
ItemStatSlider01Title:Hide()
ItemStatSlider02:Hide()
ItemStatSlider02Title:Hide()
ItemStatSlider03:Hide()
ItemStatSlider03Title:Hide()
ItemStatSlider04:Hide()
ItemStatSlider04Title:Hide()
ItemStatSlider05:Hide()
ItemStatSlider05Title:Hide()
ItemStatBox01:Hide()
ItemStatBox01Title:Hide()
ItemStatBox02:Hide()
ItemStatBox02Title:Hide()
ItemStatBox03:Hide()
ItemStatBox03Title:Hide()
ItemStatBox04:Hide()
ItemStatBox04Title:Hide()
ItemStatBox05:Hide()
ItemStatBox05Title:Hide()
ItemResistanceBoxes[1]:Hide()
ItemResistanceBoxes[2]:Hide()
ItemResistanceBoxes[3]:Hide()
ItemResistanceBoxes[4]:Hide()
ItemResistanceBoxes[5]:Hide()
ItemResistanceBoxes[6]:Hide()
ItemResistanceBoxes[7]:Hide()
ItemResistanceBoxes[8]:Hide()
ItemResistanceBoxes[9]:Hide()
ItemResistanceBoxes[10]:Hide()
end

function show_items_page3()
ItemArmorBox:Show()
ItemArmorBoxTitle:Show()
ItemBlockBox:Show()
ItemBlockBoxTitle:Show()
ItemDelayBox:Show()
ItemDelayBoxTitle:Show()
ItemMaterialSlider:Show()
ItemMaterialSliderTitle:Show()
ItemMinDamageBox:Show()
ItemMinDamageBoxTitle:Show()
ItemMaxDamageBox:Show()
ItemMaxDamageBoxTitle:Show()

ItemSpellBox[2]:Show()
ItemSpellBox[3]:Show()
ItemSpellBox[3].title:Show()
end

function hide_items_page3()
ItemMaterialSlider:Hide()
ItemMaterialSliderTitle:Hide()
ItemMinDamageBox:Hide()
ItemMinDamageBoxTitle:Hide()
ItemMaxDamageBox:Hide()
ItemMaxDamageBoxTitle:Hide()

ItemSpellBox[2]:Hide()
ItemSpellBox[3]:Hide()
ItemSpellBox[3].title:Hide()
ItemArmorBox:Hide()
ItemArmorBoxTitle:Hide()
ItemBlockBox:Hide()
ItemBlockBoxTitle:Hide()
ItemDelayBox:Hide()
ItemDelayBoxTitle:Hide()
end

function show_items_page4()
	QFCB_race_human:Show()
	QFCB_race_humanTitle:Show()
	QFCB_race_orc:Show()
	QFCB_race_orcTitle:Show()
	QFCB_race_dwarf:Show()
	QFCB_race_dwarfTitle:Show()
	QFCB_race_nightelf:Show()
	QFCB_race_nightelfTitle:Show()
	QFCB_race_undead:Show()
	QFCB_race_undeadTitle:Show()
	QFCB_race_tauren:Show()
	QFCB_race_taurenTitle:Show()
	QFCB_race_gnome:Show()
	QFCB_race_gnomeTitle:Show()
	QFCB_race_troll:Show()
	QFCB_race_trollTitle:Show()
	QFCB_race_bloodelf:Show()
	QFCB_race_bloodelfTitle:Show()
	QFCB_race_draenei:Show()
	QFCB_race_draeneiTitle:Show()
	QFCB_class_warrior:Show()
	QFCB_class_warriorTitle:Show()
	QFCB_class_paladin:Show()
	QFCB_class_paladinTitle:Show()
	QFCB_class_hunter:Show()
	QFCB_class_hunterTitle:Show()
	QFCB_class_rogue:Show()
	QFCB_class_rogueTitle:Show()
	QFCB_class_priest:Show()
	QFCB_class_priestTitle:Show()
	QFCB_class_shaman:Show()
	QFCB_class_shamanTitle:Show()
	QFCB_class_mage:Show()
	QFCB_class_mageTitle:Show()
	QFCB_class_warlock:Show()
	QFCB_class_warlockTitle:Show()
	QFCB_class_druid:Show()
	QFCB_class_druidTitle:Show()
end
	
function hide_items_page4()
	QFCB_race_human:Hide()
	QFCB_race_humanTitle:Hide()
	QFCB_race_orc:Hide()
	QFCB_race_orcTitle:Hide()
	QFCB_race_dwarf:Hide()
	QFCB_race_dwarfTitle:Hide()
	QFCB_race_nightelf:Hide()
	QFCB_race_nightelfTitle:Hide()
	QFCB_race_undead:Hide()
	QFCB_race_undeadTitle:Hide()
	QFCB_race_tauren:Hide()
	QFCB_race_taurenTitle:Hide()
	QFCB_race_gnome:Hide()
	QFCB_race_gnomeTitle:Hide()
	QFCB_race_troll:Hide()
	QFCB_race_trollTitle:Hide()
	QFCB_race_bloodelf:Hide()
	QFCB_race_bloodelfTitle:Hide()
	QFCB_race_draenei:Hide()
	QFCB_race_draeneiTitle:Hide()
	QFCB_class_warrior:Hide()
	QFCB_class_warriorTitle:Hide()
	QFCB_class_paladin:Hide()
	QFCB_class_paladinTitle:Hide()
	QFCB_class_hunter:Hide()
	QFCB_class_hunterTitle:Hide()
	QFCB_class_rogue:Hide()
	QFCB_class_rogueTitle:Hide()
	QFCB_class_priest:Hide()
	QFCB_class_priestTitle:Hide()
	QFCB_class_shaman:Hide()
	QFCB_class_shamanTitle:Hide()
	QFCB_class_mage:Hide()
	QFCB_class_mageTitle:Hide()
	QFCB_class_warlock:Hide()
	QFCB_class_warlockTitle:Hide()
	QFCB_class_druid:Hide()
	QFCB_class_druidTitle:Hide()

	


end


function page_decider()
PlaySound("INTERFACESOUND_CHARWINDOWTAB", "SFX")
--
if QFCB_race_human:IsVisible() and CC_UIMode == 2 then
	show_quests_page1()
	hide_quests_page4()
end

if QuestObjective01Box:IsVisible() then
show_quests_page4()
hide_quests_page3()

end

if QuestStartingItemBox:IsVisible() then
show_quests_page3()
hide_quests_page2()
end

if QuestNameBox:IsVisible() then
show_quests_page2() 
hide_quests_page1()
end
--


if ItemMaterialSlider:IsVisible() then
	show_items_page4()
	hide_items_page3()
end

if ItemStatSlider01:IsVisible() then
show_items_page3()
hide_items_page2()
end

if ItemNameBox:IsVisible() then
show_items_page2()
hide_items_page1()
end



end

function hide_items()
hide_items_page1()
hide_items_page2()
hide_items_page3()
hide_items_page4()
end

function show_items()
show_items_page1()
show_items_page2()
show_items_page3()
show_items_page4()
end

function hide_commands()
CommandsTitle:Hide()
Commands_identify:Hide()
end

function show_commands()
CC_ParentFrame.Background:SetTexCoord(CoordCalc(2048, 0, 1280, 1024, 768))
ObjNameBox:Hide()
ObjNameBoxTitle:Hide()

CommandsTitle:Show()
Commands_identify:Show()
end

local function tab_creature_func(btn)
	CC_ConfirmFrame:Hide()
	show_creatures()
	
	hide_commands()
	hide_items()
	hide_quests()
	PlaySound("INTERFACESOUND_CHARWINDOWTAB", "SFX")
end

local function tab_quests_func(btn)
	CC_ConfirmFrame:Hide()
	hide_quests()
	show_quests_page1()
	
	hide_creatures()
	hide_items()
	hide_commands()
	PlaySound("INTERFACESOUND_CHARWINDOWTAB", "SFX")
end

local function tab_items_func(btn)
	CC_ConfirmFrame:Hide()
	hide_items()
	show_items_page1()
	
	hide_creatures()
	hide_quests()
	hide_commands()
	PlaySound("INTERFACESOUND_CHARWINDOWTAB", "SFX")
end


local function tab_commands_func(btn)
	CC_ConfirmFrame:Hide()
	show_commands()
	
	
	hide_creatures()
	hide_items()
	hide_quests()
	PlaySound("INTERFACESOUND_CHARWINDOWTAB", "SFX")
end

function ContentCreatorHandlers.SwitchText(player, supplytable)

	WritButton_Supply:SetText(supplytable[1][2])
	GreaterWritButton_Supply:SetText(supplytable[1][4])

	local result = {}
	local newstring = ""
    local vartable = {}

        for i = 1, #(tostring(supplytable[1][3])) do
            result[i] = tostring(supplytable[1][3]):sub(i, i)
        end

	if #result >= 5 then
        for var=1, (#result - 4) do
            vartable[var] = result[var]
            end
            newstring = table.concat(vartable, "")
        
            GoldButton_Supply:SetText(newstring)
	else
		GoldButton_Supply:SetText("0")
    end

	if tonumber(WritButton_Price:GetText()) > tonumber(WritButton_Supply:GetText()) then
		Confirm_WritButton:Hide()
		
	else
		Confirm_WritButton:Show()
	end

	if tonumber(GreaterWritButton_Price:GetText()) > tonumber(GreaterWritButton_Supply:GetText()) then
		Confirm_GreaterWritButton:Hide()
	else
		Confirm_GreaterWritButton:Show()
	end


	if tonumber(GoldButton_Price:GetText()) > tonumber(GoldButton_Supply:GetText()) then
		Confirm_GoldButton:Hide()
	else
		Confirm_GoldButton:Show()
	end

end

function ContentCreatorHandlers.UpdateFacTable(player, factable2)
	FacTable = {}

	FacTable = factable2

	FactionSliderTitle:SetText(FacTable[1][3].." ("..FacTable[1][2]..")")
	FactionSlider:SetMinMaxValues(2, #FacTable)
	FactionSlider:SetValue(2)
	ItemRequiredFactionSliderTitle:SetText(FacTable[1][3].." ("..FacTable[1][2]..")")
	ItemRequiredFactionSlider:SetMinMaxValues(1, #FacTable)
end

function ShowConfirmation()

if CC_UIMode == 3 then
	if ItemQualitySlider:GetValue() > 3 then
		QualVar1 = 200
		QualVar2 = 50
		QualVar3 = 2
	else
		QualVar3 = 0
		QualVar2 = 0
		QualVar1 = 0
	end

	WritButton_Price:SetText(math.ceil(ItemRequiredLevelSlider:GetValue() / 4) + QualVar2)
	GoldButton_Price:SetText(math.ceil(4.666666 * ItemRequiredLevelSlider:GetValue()) + QualVar1)
	GreaterWritButton_Price:SetText(1 + QualVar3)
end

if CC_UIMode == 2 then
	--[[
	if QuestMinLevelSlider:GetValue() <= 50 then
		WritButton_Price:SetText(50)  -- writs
		else
		WritButton_Price:SetText(math.floor(QuestMinLevelSlider:GetValue() / 4) + 50)
		end
		
		GoldButton_Price:SetText(QuestMinLevelSlider:GetValue() * 6)
		
		if QuestMinLevelSlider:GetValue() <= 50 then
		GreaterWritButton_Price:SetText(2) -- greater writs
		else
		GreaterWritButton_Price:SetText(3)
		end
		--]]

		GoldButton_Price:SetText(QuestMinLevelSlider:GetValue()*8)
		-- gold
		WritButton_Price:SetText(math.ceil((QuestMinLevelSlider:GetValue()*4) / 5))
		-- writ
		if QuestMinLevelSlider:GetValue() <= 59 then
		GreaterWritButton_Price:SetText(1)
		end
		
		if QuestMinLevelSlider:GetValue() >= 60 then
		GreaterWritButton_Price:SetText(2)
		end
end

if CC_UIMode == 1 then
	--[[
	GoldButton_Price:SetText(LevelSlider:GetValue()*4)
	-- gold
	WritButton_Price:SetText(math.ceil(LevelSlider:GetValue() / 2.6))
	-- writ
	if LevelSlider:GetValue() <= 59 then
	GreaterWritButton_Price:SetText(1)
	end
	
	if LevelSlider:GetValue() >= 60 then
	GreaterWritButton_Price:SetText(2)
	end
	-- greater writ
	--]]

		WritButton_Price:SetText(math.ceil((LevelSlider:GetValue() * 6) / 5))
		
		GoldButton_Price:SetText(LevelSlider:GetValue() * 9)

		if LevelSlider:GetValue() <= 50 then
		GreaterWritButton_Price:SetText(2) -- greater writs
		else
		GreaterWritButton_Price:SetText(3)
		end

end

CC_ConfirmFrame:Hide()
CC_ConfirmFrame:Show()
AIO.Handle("AIO_CC", "UpdateConfirmText")
end

local function NameBash(obj, index, cache)

if obj:GetNumLetters() > 1 then
cache[index] = obj:GetText()
end

if obj:GetNumLetters() <= 1 then
cache[index] = 0
end

end

local function SliderBashBasic(obj, index, cache)

if obj:GetNumLetters() > 1 then
cache[index] = obj:GetText()
end

end
--
--
--
function TransferInformation_1(player, btn, passing_table)

if ObjNameBox:GetNumLetters() > 1 then
passing_table[2] = ObjNameBox:GetText()
end

if ObjNameBox:GetNumLetters() <= 1 then
passing_table[2] = 0
end

if ObjSubNameBox:GetNumLetters() > 1 then
passing_table[3] = ObjSubNameBox:GetText()
end

if ObjSubNameBox:GetNumLetters() <= 1 then
passing_table[3] = 0
end


passing_table[4] = FacTable[FactionSlider:GetValue()][2]
passing_table[5] = CreatureClasses[ClassSlider:GetValue()].bitmask
passing_table[6] = LevelSlider:GetValue()
passing_table[7] = CreatureRanks[RankSlider:GetValue()].id
passing_table[8] = FlagCheckButton_Vendor:GetChecked()
passing_table[9] = FlagCheckButton_Gossip:GetChecked()
passing_table[10] = FlagCheckButton_Quest:GetChecked()

if Model01InputBox:GetNumLetters() > 1 then
passing_table[11] = tonumber(Model01InputBox:GetText())
end

if Model01InputBox:GetNumLetters() <= 1 then
passing_table[11] = 0
end

if Model02InputBox:GetNumLetters() > 1 then
passing_table[12] = tonumber(Model02InputBox:GetText())
end

if Model02InputBox:GetNumLetters() <= 1 then
passing_table[12] = 0
end

if Model03InputBox:GetNumLetters() > 1 then
passing_table[13] = tonumber(Model03InputBox:GetText())
end

if Model03InputBox:GetNumLetters() <= 1 then
passing_table[13] = 0
end

if Model04InputBox:GetNumLetters() > 1 then
passing_table[14] = tonumber(Model04InputBox:GetText())
end

if Model04InputBox:GetNumLetters() <= 1 then
passing_table[14] = 0
end

if Equip01InputBox:GetNumLetters() > 1 then
passing_table[15] = tonumber(Equip01InputBox:GetText())
end

if Equip01InputBox:GetNumLetters() <= 1 then
passing_table[15] = 0
end

if Equip02InputBox:GetNumLetters() > 1 then
passing_table[16] = tonumber(Equip02InputBox:GetText())
end

if Equip02InputBox:GetNumLetters() <= 1 then
passing_table[16] = 0
end

if Equip03InputBox:GetNumLetters() > 1 then
passing_table[17] = tonumber(Equip03InputBox:GetText())
end

if Equip03InputBox:GetNumLetters() <= 1 then
passing_table[17] = 0
end

passing_table[18] = LevelSlider:GetValue() * 9
-- gold
passing_table[19] = math.ceil((LevelSlider:GetValue() * 6) / 5)
-- writ
if passing_table[6] <= 50 then
passing_table[20] = 2
end

if passing_table[6] >= 60 then
passing_table[20] = 3
end
-- greater writ

if btn:GetName() == "Confirm_WritButton" then
passing_table[21] = 2
end

if btn:GetName() == "Confirm_GoldButton" then
passing_table[21] = 1
end

if btn:GetName() == "Confirm_GreaterWritButton" then
passing_table[21] = 3
end


if string.len(GossipMenu.text) > 1 then
	passing_table[25] = GossipMenu.text
end

if string.len(GossipMenu.text) <= 1 then
	passing_table[25] = 0
end

if string.len(AbilitiesDescription.text) > 1 then
	passing_table[26] = AbilitiesDescription.text
end

if string.len(AbilitiesDescription.text) <= 1 then
	passing_table[26] = 0
end


AIO.Handle("AIO_CC", "SubmitIntoDatabase", passing_table, passing_table[1])

end
--
--
--
function TransferInformation_2(player, btn, passing_table)




if string.len(QuestStrings.logtitle) > 1 then
passing_table[2] = QuestStrings.logtitle
end

if string.len(QuestStrings.logtitle) <= 1 then
passing_table[2] = 0
end

if string.len(QuestStrings.logdescription) > 1 then
passing_table[3] = QuestStrings.logdescription
end

if string.len(QuestStrings.logdescription) <= 1 then
passing_table[3] = 0
end

if string.len(QuestStrings.questdescription) > 1 then
passing_table[4] = QuestStrings.questdescription
end

if string.len(QuestStrings.questdescription) <= 1 then
passing_table[4] = 0
end

if string.len(QuestStrings.questcompletionlog) > 1 then
passing_table[5] = QuestStrings.questcompletionlog
end


if string.len(QuestStrings.questcompletionlog) <= 1 then
passing_table[5] = 0
end

if string.len(QuestStrings.inquiredescription) > 1 then
passing_table[60] = QuestStrings.inquiredescription
end


if string.len(QuestStrings.inquiredescription) <= 1 then
passing_table[60] = 0
end


if string.len(QuestStrings.completetext) > 1 then
passing_table[61] = QuestStrings.completetext
end


if string.len(QuestStrings.completetext) <= 1 then
passing_table[61] = 0
end









if QuestStarterBox:GetNumLetters() >= 1 then
passing_table[6] = tonumber(QuestStarterBox:GetText())
end

if QuestStarterBox:GetNumLetters() < 1 then
passing_table[6] = 0
end

if QuestEnderBox:GetNumLetters() >= 1 then
passing_table[7] = tonumber(QuestEnderBox:GetText())
end

if QuestEnderBox:GetNumLetters() < 1 then
passing_table[7] = 0
end

if RequiredFactionIDBox_01:GetNumLetters() > 1 then
passing_table[8] = tonumber(RequiredFactionIDBox_01:GetText())
end

if RequiredFactionIDBox_01:GetNumLetters() <= 1 then
passing_table[8] = 0
end

if RequiredFactionIDBox_02:GetNumLetters() > 1 then
passing_table[9] = tonumber(RequiredFactionIDBox_02:GetText())
end

if RequiredFactionIDBox_02:GetNumLetters() <= 1 then
passing_table[9] = 0
end
passing_table[10] = tonumber(RequiredFactionRepBox_01:GetValue())
passing_table[11] = tonumber(RequiredFactionRepBox_02:GetValue())




passing_table[12] = QFCB_StayAlive:GetChecked()
passing_table[13] = QFCB_Sharable:GetChecked()
passing_table[14] = QFCB_Daily:GetChecked()
passing_table[15] = QuestMinLevelSlider:GetValue()
passing_table[16] = RequiredPlayerKillsSlider:GetValue()

if QuestStartingItemBox:GetNumLetters() > 1 then
passing_table[17] = tonumber(QuestStartingItemBox:GetText())
end

if QuestStartingItemBox:GetNumLetters() <= 1 then
passing_table[17] = 0
end

if RewardNextQuestBox:GetNumLetters() > 1 then
passing_table[18] = tonumber(RewardNextQuestBox:GetText())
end

if RewardNextQuestBox:GetNumLetters() <= 1 then
passing_table[18] = 0
end

passing_table[19] = QuestSetItemRewardSlider:GetValue()

if QuestRewardItemBox01:GetNumLetters() > 1 then
passing_table[20] = tonumber(QuestRewardItemBox01:GetText())
passing_table[25] = QuestRewardItemCount01Slider:GetValue()
end

if QuestRewardItemBox01:GetNumLetters() <= 1 then
passing_table[20] = 0
passing_table[25] = 0
end

if QuestRewardItemBox02:GetNumLetters() > 1 then
passing_table[22] = tonumber(QuestRewardItemBox02:GetText())
passing_table[26] = QuestRewardItemCount02Slider:GetValue()
end

if QuestRewardItemBox02:GetNumLetters() <= 1 then
passing_table[22] = 0
passing_table[26] = 0
end

if QuestRewardItemBox03:GetNumLetters() > 1 then
passing_table[23] = tonumber(QuestRewardItemBox03:GetText())
passing_table[27] = QuestRewardItemCount03Slider:GetValue()
end

if QuestRewardItemBox03:GetNumLetters() <= 1 then
passing_table[23] = 0
passing_table[27] = 0
end

if QuestRewardItemBox04:GetNumLetters() > 1 then
passing_table[24] = tonumber(QuestRewardItemBox04:GetText())
passing_table[28] = QuestRewardItemCount04Slider:GetValue()
end

if QuestRewardItemBox04:GetNumLetters() <= 1 then
passing_table[24] = 0
passing_table[28] = 0
end

if QuestRewardFactionRep01Slider:GetNumLetters() >= 1 then
passing_table[29] = QuestRewardFactionRep01Slider:GetText()
end

if QuestRewardFactionRep01Slider:GetNumLetters() < 1 then
passing_table[29] = 0
end

if QuestRewardFactionRep03Slider:GetNumLetters() >= 1 then
	passing_table[31] = QuestRewardFactionRep03Slider:GetText()
end
	
if QuestRewardFactionRep03Slider:GetNumLetters() < 1 then
	passing_table[31] = 0
end

passing_table[30] = ReputationRanks[QuestRewardFactionRep02Slider:GetValue()].id

passing_table[32] = ReputationRanks[QuestRewardFactionRep04Slider:GetValue()].id

passing_table[33] = QFCB_race_human:GetChecked()
passing_table[34] = QFCB_race_orc:GetChecked()
passing_table[35] = QFCB_race_dwarf:GetChecked()
passing_table[36] = QFCB_race_nightelf:GetChecked()
passing_table[37] = QFCB_race_undead:GetChecked()
passing_table[38] = QFCB_race_tauren:GetChecked()
passing_table[39] = QFCB_race_gnome:GetChecked()
passing_table[40] = QFCB_race_troll:GetChecked()
passing_table[41] = QFCB_race_bloodelf:GetChecked()
passing_table[42] = QFCB_race_draenei:GetChecked()

passing_table[46] = QFCB_class_warrior:GetChecked()
passing_table[47] = QFCB_class_paladin:GetChecked()
passing_table[48] = QFCB_class_hunter:GetChecked()
passing_table[49] = QFCB_class_rogue:GetChecked()
passing_table[50] = QFCB_class_priest:GetChecked()
passing_table[51] = QFCB_class_shaman:GetChecked()
passing_table[52] = QFCB_class_mage:GetChecked()
passing_table[53] = QFCB_class_warlock:GetChecked()
passing_table[54] = QFCB_class_druid:GetChecked()



if btn:GetName() == "Confirm_WritButton" then
passing_table[21] = 2
end

if btn:GetName() == "Confirm_GoldButton" then
passing_table[21] = 1
end


if btn:GetName() == "Confirm_GreaterWritButton" then
passing_table[21] = 3
end



passing_table[43] = math.ceil((QuestMinLevelSlider:GetValue()*4) / 5)

passing_table[44] = QuestMinLevelSlider:GetValue()*8 -- gold

if passing_table[15] <= 55 then
passing_table[45] = 1 -- greater writs
else
passing_table[45] = 2
end

-- objectives below

if QuestObjective01Box:GetNumLetters() > 1 then
passing_table[46] = tonumber(QuestObjective01Box:GetText())
end

if QuestObjective01Box:GetNumLetters() <= 1 then
passing_table[46] = 0
end

if QuestObjective02Box:GetNumLetters() > 1 then
passing_table[47] = tonumber(QuestObjective02Box:GetText())
end

if QuestObjective02Box:GetNumLetters() <= 1 then
passing_table[47] = 0
end

if QuestObjective03Box:GetNumLetters() > 1 then
passing_table[48] = tonumber(QuestObjective03Box:GetText())
end

if QuestObjective03Box:GetNumLetters() <= 1 then
passing_table[48] = 0
end

if QuestObjective04Box:GetNumLetters() > 1 then
passing_table[49] = tonumber(QuestObjective04Box:GetText())
end

if QuestObjective04Box:GetNumLetters() <= 1 then
passing_table[49] = 0
end

passing_table[50] = QuestObjective01DeterminantSlider:GetValue()
passing_table[51] = QuestObjective01CountSlider:GetValue()
passing_table[52] = QuestObjective02DeterminantSlider:GetValue()
passing_table[53] = QuestObjective02CountSlider:GetValue()
passing_table[54] = QuestObjective03DeterminantSlider:GetValue()
passing_table[55] = QuestObjective03CountSlider:GetValue()
passing_table[56] = QuestObjective04DeterminantSlider:GetValue()
passing_table[57] = QuestObjective04CountSlider:GetValue()

AIO.Handle("AIO_CC", "SubmitIntoDatabase", passing_table, passing_table[1])

end
--
--
--
function TransferInformation_3(player, btn, passing_table)




passing_table[25] = ItemClasses[ItemClassSlider:GetValue()].subclass[ItemClassSlider02:GetValue()].id



passing_table[24] = ItemClasses[ItemClassSlider:GetValue()].id

passing_table[26] = ItemQualities[ItemQualitySlider:GetValue()].id

passing_table[27] = InventoryTypes[ItemInventoryTypeSlider:GetValue()].id

passing_table[28] = ItemRequiredLevelSlider:GetValue()

if FacTable[ItemRequiredFactionSlider:GetValue()][4] == 2 then
	passing_table[29] = 0
	passing_table[30] = 0
else
	passing_table[29] = FacTable[ItemRequiredFactionSlider:GetValue()][2]
	passing_table[30] = ReputationRanks[ItemRequiredFacRepSlider:GetValue()].id
end




passing_table[31] = ItemBondings[ItemBondingSlider:GetValue()].id
passing_table[32] = ItemStats[ItemStatSlider01:GetValue()].id
passing_table[33] = ItemStats[ItemStatSlider02:GetValue()].id
passing_table[34] = ItemStats[ItemStatSlider03:GetValue()].id

passing_table[35] = ItemStats[ItemStatSlider04:GetValue()].id
passing_table[36] = ItemStats[ItemStatSlider05:GetValue()].id
passing_table[37] = ItemMaterials[ItemMaterialSlider:GetValue()].id



if ItemNameBox:GetNumLetters() > 1 then
passing_table[2] = ItemNameBox:GetText()
end

if ItemNameBox:GetNumLetters() <= 1 then
passing_table[2] = 0
end

if ItemDescriptionBox:GetNumLetters() > 1 then
passing_table[3] = ItemDescriptionBox:GetText()
end

if ItemDescriptionBox:GetNumLetters() <= 1 then
passing_table[3] = 0
end

if DisplayIDBox:GetNumLetters() > 1 then
passing_table[4] = DisplayIDBox:GetText()
end

if DisplayIDBox:GetNumLetters() <= 1 then
passing_table[4] = 0
end

if ItemArmorBox:GetNumLetters() >= 1 then
passing_table[5] = ItemArmorBox:GetText()
end

if ItemArmorBox:GetNumLetters() < 1 then
passing_table[5] = 0
end

if ItemBlockBox:GetNumLetters() >= 1 then
passing_table[6] = ItemBlockBox:GetText()
end

if ItemBlockBox:GetNumLetters() < 1 then
passing_table[6] = 0
end

if ItemDelayBox:GetNumLetters() >= 1 then
passing_table[7] = ItemDelayBox:GetText()
end

passing_table[75] = 0

if ItemDelayBox:GetNumLetters() < 1 then
passing_table[7] = 0
end

if ItemStatBox01:GetNumLetters() >= 1 then
passing_table[8] = ItemStatBox01:GetText()
passing_table[75] = passing_table[75] + 1
end

if ItemStatBox01:GetNumLetters() < 1 then
passing_table[8] = 0
end

if ItemStatBox02:GetNumLetters() >= 1 then
passing_table[9] = ItemStatBox02:GetText()
passing_table[75] = passing_table[75] + 1
end

if ItemStatBox02:GetNumLetters() < 1 then
passing_table[9] = 0
end

if ItemStatBox03:GetNumLetters() >= 1 then
passing_table[10] = ItemStatBox03:GetText()
passing_table[75] = passing_table[75] + 1
end

if ItemStatBox03:GetNumLetters() < 1 then
passing_table[10] = 0
end

if ItemStatBox04:GetNumLetters() >= 1 then
passing_table[11] = ItemStatBox04:GetText()
passing_table[75] = passing_table[75] + 1
end

if ItemStatBox04:GetNumLetters() < 1 then
passing_table[11] = 0
end

if ItemStatBox05:GetNumLetters() >= 1 then
passing_table[12] = ItemStatBox05:GetText()
passing_table[75] = passing_table[75] + 1
end

if ItemStatBox05:GetNumLetters() <= 1 then
passing_table[12] = 0
end



if ItemResistanceBoxes[1]:GetNumLetters() >= 1 then
passing_table[13] = ItemResistanceBoxes[1]:GetText()
end

if ItemResistanceBoxes[1]:GetNumLetters() < 1 then
passing_table[13] = 0
end

if ItemResistanceBoxes[3]:GetNumLetters() >= 1 then
passing_table[14] = ItemResistanceBoxes[3]:GetText()
end

if ItemResistanceBoxes[3]:GetNumLetters() < 1 then
passing_table[14] = 0
end

if ItemResistanceBoxes[5]:GetNumLetters() >= 1 then
passing_table[15] = ItemResistanceBoxes[5]:GetText()
end

if ItemResistanceBoxes[5]:GetNumLetters() < 1 then
passing_table[15] = 0
end

if ItemResistanceBoxes[7]:GetNumLetters() >= 1 then
passing_table[16] = ItemResistanceBoxes[7]:GetText()
end

if ItemResistanceBoxes[7]:GetNumLetters() < 1 then
passing_table[16] = 0
end

if ItemResistanceBoxes[9]:GetNumLetters() >= 1 then
passing_table[17] = ItemResistanceBoxes[9]:GetText()
end

if ItemResistanceBoxes[9]:GetNumLetters() < 1 then
passing_table[17] = 0
end

if ItemMinDamageBox:GetNumLetters() > 1 then
passing_table[19] = ItemMinDamageBox:GetText()
end

if ItemMinDamageBox:GetNumLetters() <= 1 then
passing_table[19] = 0
end

if ItemMaxDamageBox:GetNumLetters() > 1 then
passing_table[20] = ItemMaxDamageBox:GetText()
end

if ItemMaxDamageBox:GetNumLetters() <= 1 then
passing_table[20] = 0
end


if string.len(ItemSpellBox[3].effects) > 1 then
passing_table[21] = ItemSpellBox[3].effects
end

if string.len(ItemSpellBox[3].effects) <= 1 then
passing_table[21] = 0
end


-- price placeholder



if ItemQualitySlider:GetValue() > 3 then
	QualVar1 = 200
	QualVar2 = 50
	QualVar3 = 2
else
	QualVar3 = 0
	QualVar2 = 0
	QualVar1 = 0
end

passing_table[43] = math.ceil(ItemRequiredLevelSlider:GetValue() / 4) + QualVar2 --math.ceil(4.666666 * ItemRequiredLevelSlider:GetValue()) + QualVar1
passing_table[44] = math.ceil(4.666666 * ItemRequiredLevelSlider:GetValue()) + QualVar1 --math.ceil(ItemRequiredLevelSlider:GetValue() / 4) + QualVar2
passing_table[45] = 1 + QualVar3

passing_table[50] = QFCB_race_human:GetChecked()
passing_table[51] = QFCB_race_orc:GetChecked()
passing_table[52] = QFCB_race_dwarf:GetChecked()
passing_table[53] = QFCB_race_nightelf:GetChecked()
passing_table[54] = QFCB_race_undead:GetChecked()
passing_table[55] = QFCB_race_tauren:GetChecked()
passing_table[56] = QFCB_race_gnome:GetChecked()
passing_table[57] = QFCB_race_troll:GetChecked()
passing_table[58] = QFCB_race_bloodelf:GetChecked()
passing_table[59] = QFCB_race_draenei:GetChecked()

passing_table[60] = QFCB_class_warrior:GetChecked()
passing_table[61] = QFCB_class_paladin:GetChecked()
passing_table[62] = QFCB_class_hunter:GetChecked()
passing_table[63] = QFCB_class_rogue:GetChecked()
passing_table[64] = QFCB_class_priest:GetChecked()
passing_table[65] = QFCB_class_shaman:GetChecked()
passing_table[66] = QFCB_class_mage:GetChecked()
passing_table[67] = QFCB_class_warlock:GetChecked()
passing_table[68] = QFCB_class_druid:GetChecked()

passing_table[69] = IFCB_conjured:GetChecked()
passing_table[70] = IFCB_openable:GetChecked()
passing_table[71] = IFCB_indestructible:GetChecked()
passing_table[72] = IFCB_partyloot:GetChecked()
passing_table[73] = IFCB_unique:GetChecked()
passing_table[74] = IFCB_accountbind:GetChecked()

if btn:GetName() == "Confirm_WritButton" then
passing_table[46] = 2
end

if btn:GetName() == "Confirm_GoldButton" then
passing_table[46] = 1
end

if btn:GetName() == "Confirm_GreaterWritButton" then
passing_table[46] = 3
end

AIO.Handle("AIO_CC", "SubmitIntoDatabase", passing_table, passing_table[1])

--

end
--
--
--

function TransferInformation(btn)

SubmissionInfoCache = {}
SubmissionInfoCache[1] = CC_UIMode

if CC_UIMode == 1 then

TransferInformation_1(player, btn, SubmissionInfoCache)


end -- creatures ^

if CC_UIMode == 2 then

TransferInformation_2(player, btn, SubmissionInfoCache)


end -- quests ^

if CC_UIMode == 3 then

TransferInformation_3(player, btn, SubmissionInfoCache)


end -- items ^



end

function HideConfirmation_Yes(btn)
CC_ConfirmFrame:Hide()
TransferInformation(btn)
end

function HideConfirmation_No()
CC_ConfirmFrame:Hide()
end

ItemClassSlider02:SetScript("OnValueChanged", function(self,value,userInput)

	ItemClassSlider02:SetMinMaxValues(0, #ItemClasses[(ItemClassSlider:GetValue())].subclass)
	ItemClassSlider02Title:SetText(ItemClasses[(ItemClassSlider:GetValue())].subclass[value].name)


end)

ItemClassSlider:SetScript("OnValueChanged", function(self,value,userInput)

	ItemClassSliderTitle:SetText(ItemClasses[value].name)
	ItemClassSlider02:SetValue(0)
	ItemClassSlider02Title:SetText(ItemClasses[value].subclass[0].name)
	ItemClassSlider02:SetValueStep(1)
end)

FactionSlider:SetScript("OnValueChanged", function(self,value,userInput)

	FactionSliderTitle:SetText(FacTable[value][3].." ("..FacTable[value][2]..")")

end)

ItemRequiredFactionSlider:SetScript("OnValueChanged", function(self,value,userInput)

	ItemRequiredFactionSliderTitle:SetText(FacTable[value][3].." ("..FacTable[value][2]..")")

end)

ItemQualitySlider:SetScript("OnValueChanged", function(self,value,userInput)

	ItemQualitySliderTitle:SetText(ItemQualities[value].name)
	ItemQualitySliderTitle:SetTextColor(ItemQualities[value].r, ItemQualities[value].g, ItemQualities[value].b)
end)

ItemInventoryTypeSlider:SetScript("OnValueChanged", function(self,value,userInput)
	ItemInventoryTypeSliderTitle:SetText(InventoryTypes[value].name)
end)

ItemRequiredLevelSlider:SetScript("OnValueChanged", function(self,value,userInput)

	ItemRequiredLevelSliderTitle:SetText("Required Level: "..value)

end)

ItemBondingSlider:SetScript("OnValueChanged", function(self,value,userInput)

	
	ItemBondingSliderTitle:SetText(ItemBondings[value].name)

end)

ItemMaterialSlider:SetScript("OnValueChanged", function(self,value,userInput)

	
	ItemMaterialSliderTitle:SetText(ItemMaterials[value].name)

end)

ItemStatSlider01:SetScript("OnValueChanged", function(self,value,userInput)

	
	ItemStatSlider01Title:SetText(ItemStats[value].name)

end)

ItemStatSlider02:SetScript("OnValueChanged", function(self,value,userInput)

	
	ItemStatSlider02Title:SetText(ItemStats[value].name)

end)

ItemStatSlider03:SetScript("OnValueChanged", function(self,value,userInput)

	
	ItemStatSlider03Title:SetText(ItemStats[value].name)

end)

ItemStatSlider04:SetScript("OnValueChanged", function(self,value,userInput)

	
	ItemStatSlider04Title:SetText(ItemStats[value].name)

end)

ItemStatSlider05:SetScript("OnValueChanged", function(self,value,userInput)

	
	ItemStatSlider05Title:SetText(ItemStats[value].name)

end)

ClassSlider:SetScript("OnValueChanged", function(self,value,userInput)

	
	ClassSliderTitle:SetText(CreatureClasses[value].desc)

end)

RankSlider:SetScript("OnValueChanged", function(self,value,userInput)

	
	RankSliderTitle:SetText("Rank: "..CreatureRanks[value].name)

end)

LevelSlider:SetScript("OnValueChanged", function(self,value,userInput)

	LevelSliderTitle:SetText("Level: "..value)

end)

QuestRewardItemCount01Slider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestRewardItemCount01SliderTitle:SetText("Item Count: "..value)

end)

QuestRewardItemCount02Slider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestRewardItemCount02SliderTitle:SetText("Item Count: "..value)

end)

QuestRewardItemCount03Slider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestRewardItemCount03SliderTitle:SetText("Item Count: "..value)

end)

QuestRewardItemCount04Slider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestRewardItemCount04SliderTitle:SetText("Item Count: "..value)

end)

RequiredPlayerKillsSlider:SetScript("OnValueChanged", function(self,value,userInput)

	RequiredPlayerKillsSliderTitle:SetText("Player Kills: "..value)

end)

QuestMinLevelSlider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestMinLevelSliderTitle:SetText("Minimum Level: "..value)

end)

QuestRewardFactionRep02Slider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestRewardFactionRep02SliderTitle:SetText(ReputationRanks[value].name)

end)

QuestRewardFactionRep04Slider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestRewardFactionRep04SliderTitle:SetText(ReputationRanks[value].name)

end)

RequiredFactionRepBox_01:SetScript("OnValueChanged", function(self,value,userInput)

	RequiredFactionRepBox_01Title:SetText(ReputationRanks[value].name)

end)

RequiredFactionRepBox_02:SetScript("OnValueChanged", function(self,value,userInput)

	RequiredFactionRepBox_02Title:SetText(ReputationRanks[value].name)

end)


ItemRequiredFacRepSlider:SetScript("OnValueChanged", function(self,value,userInput)

	ItemRequiredFacRepSliderTitle:SetText("Reputation: "..ReputationRanks[value].name)

end)

QuestObjective01DeterminantSlider:SetScript("OnValueChanged", function(self,value,userInput)

	if value == 1 then
		QuestObjective01DeterminantSliderTitle:SetText("Collect Item")
	elseif value == 2 then
		QuestObjective01DeterminantSliderTitle:SetText("Kill Creature")
	end

end)

QuestObjective01CountSlider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestObjective01CountSliderTitle:SetText("Count: "..value)

end)

QuestObjective02DeterminantSlider:SetScript("OnValueChanged", function(self,value,userInput)

	if value == 1 then
		QuestObjective02DeterminantSliderTitle:SetText("Collect Item")
	elseif value == 2 then
		QuestObjective02DeterminantSliderTitle:SetText("Kill Creature")
	end

end)

QuestObjective02CountSlider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestObjective02CountSliderTitle:SetText("Count: "..value)

end)

QuestObjective03DeterminantSlider:SetScript("OnValueChanged", function(self,value,userInput)

	if value == 1 then
		QuestObjective03DeterminantSliderTitle:SetText("Collect Item")
	elseif value == 2 then
		QuestObjective03DeterminantSliderTitle:SetText("Kill Creature")
	end

end)

QuestObjective03CountSlider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestObjective03CountSliderTitle:SetText("Count: "..value)

end)

QuestObjective04DeterminantSlider:SetScript("OnValueChanged", function(self,value,userInput)

	if value == 1 then
		QuestObjective04DeterminantSliderTitle:SetText("Collect Item")
	elseif value == 2 then
		QuestObjective04DeterminantSliderTitle:SetText("Kill Creature")
	end

end)


QuestSetItemRewardSlider:SetScript("OnValueChanged", function(self,value,userInput)

	if value == 1 then
		QuestSetItemRewardSliderTitle:SetText("Choose Item")
	elseif value == 2 then
		QuestSetItemRewardSliderTitle:SetText("Award All Items")
	end

end)


QuestObjective04CountSlider:SetScript("OnValueChanged", function(self,value,userInput)

	QuestObjective04CountSliderTitle:SetText("Count: "..value)

end)

local function HideQuestButtons(buttonname)
	if buttonname ~= "QuestNameBox" then
		QuestNameBox:Hide()
	end
	if buttonname ~= "QuestLogDescBox" then
		QuestLogDescBox:Hide()
	end
	if buttonname ~= "QuestTextBox" then
		QuestTextBox:Hide()
	end
	if buttonname ~= "QuestInquiryBox" then
		QuestInquiryBox:Hide()
	end
	if buttonname ~= "QuestTurnInBox" then
		QuestTurnInBox:Hide()
	end
	if buttonname ~= "CompleteTextDescBox" then
		CompleteTextDescBox:Hide()
	end
	if buttonname ~= "ItemSpellBox02" then
		ItemSpellBox[3]:Hide()
	end

	if buttonname ~= "GossipMenuButton" then
		GossipMenu.button:Hide()
	end

	if buttonname ~= "AbilitiesDescriptionButton" then
		AbilitiesDescription.button:Hide()
	end
end


QuestNameBox:SetScript("OnClick", function()
	HideQuestButtons(QuestNameBox:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 1

	WritingBox:SetMultiLine(false)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()

	WritingBox:SetText(QuestStrings.logtitle)
end)

QuestLogDescBox:SetScript("OnClick", function()
	HideQuestButtons(QuestLogDescBox:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 2

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()

	WritingBox:SetText(QuestStrings.logdescription)
end)

QuestTextBox:SetScript("OnClick", function()
	HideQuestButtons(QuestTextBox:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 3

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()

	WritingBox:SetText(QuestStrings.questdescription)
end)

QuestInquiryBox:SetScript("OnClick", function()
	HideQuestButtons(QuestInquiryBox:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 4

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()

	WritingBox:SetText(QuestStrings.inquiredescription)
end)

QuestTurnInBox:SetScript("OnClick", function()
	HideQuestButtons(QuestTurnInBox:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 5

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()
	
	WritingBox:SetText(QuestStrings.questcompletionlog)
end)

CompleteTextDescBox:SetScript("OnClick", function()
	HideQuestButtons(CompleteTextDescBox:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 6

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()
	
	WritingBox:SetText(QuestStrings.completetext)
end)

ItemSpellBox[3]:SetScript("OnClick", function()
	HideQuestButtons(ItemSpellBox[3]:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 7

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()
	
	WritingBox:SetText(ItemSpellBox[3].effects)
end)

GossipMenu.button:SetScript("OnClick", function()
	HideQuestButtons(GossipMenu.button:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 8

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()
	
	WritingBox:SetText(GossipMenu.text)
end)

AbilitiesDescription.button:SetScript("OnClick", function()
	HideQuestButtons(AbilitiesDescription.button:GetName())

	WritingBox:SetText("")
	CC_WritingFrame_mode = 9

	WritingBox:SetMultiLine(true)
	CC_WritingFrame:Show()
	WritingBox:SetFocus()
	
	WritingBox:SetText(AbilitiesDescription.text)
end)

CC_WritingFrame:SetScript("OnHide", function()
	if CC_UIMode == 2 then
		QuestNameBox:Show()
		QuestLogDescBox:Show()
		QuestTextBox:Show()
		QuestInquiryBox:Show()
		QuestTurnInBox:Show()
		CompleteTextDescBox:Show()
	end

	if CC_UIMode == 3 then
		ItemSpellBox[3]:Show()
	end

	if CC_UIMode == 1 then
		GossipMenu.button:Show()
		AbilitiesDescription.button:Show()
	end

	if CC_WritingFrame_mode == 1 then
		QuestStrings.logtitle = WritingBox:GetText()
	end
	if CC_WritingFrame_mode == 2 then
		QuestStrings.logdescription = WritingBox:GetText()
	end
	if CC_WritingFrame_mode == 3 then
		QuestStrings.questdescription = WritingBox:GetText()
	end
	if CC_WritingFrame_mode == 4 then
		QuestStrings.inquiredescription = WritingBox:GetText()
	end
	if CC_WritingFrame_mode == 5 then
		QuestStrings.questcompletionlog = WritingBox:GetText()
	end
	if CC_WritingFrame_mode == 6 then
		QuestStrings.completetext = WritingBox:GetText()
	end

	if CC_WritingFrame_mode == 7 then
		ItemSpellBox[3].effects = WritingBox:GetText()
	end

	if CC_WritingFrame_mode == 8 then
		GossipMenu.text = WritingBox:GetText()
	end

	if CC_WritingFrame_mode == 9 then
		AbilitiesDescription.text = WritingBox:GetText()
	end
	
	WritingBox:SetText("")
end)


tab_creature:SetScript("OnClick", tab_creature_func)
tab_quest:SetScript("OnClick", tab_quests_func)
tab_items:SetScript("OnClick", tab_items_func)
tab_commands:SetScript("OnClick", tab_commands_func)
NextPageButton:SetScript("OnClick", page_decider)
submitButton:SetScript("OnClick", ShowConfirmation)
Confirm_WritButton:SetScript("OnClick", HideConfirmation_Yes)
Confirm_GoldButton:SetScript("OnClick", HideConfirmation_Yes)
Confirm_GreaterWritButton:SetScript("OnClick", HideConfirmation_Yes)


hide_quests()
hide_items()
hide_commands()
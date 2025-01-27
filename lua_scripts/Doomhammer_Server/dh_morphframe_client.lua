local AIO = AIO or require("AIO")

if AIO.AddAddon() then
    return
end

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

local WritRaceHandlers = AIO.AddHandlers("WritRaces", {})

local OgreSkins = {}
local FurbolgSkins = {}
local UndeadSkins = {}
local NagaSkins = {}
local SatyrSkins = {}

local newfont = "Fonts\\FRIZQT__.TTF"

local ButtonID = 0

WritRacesParentFrame = CreateFrame("Frame", "WritRacesParentFrame", UIParent)
local WritRacesFrame = WritRacesParentFrame

WritRacesFrame:SetPoint("CENTER")
local scaleMulti = 0.85

WritRacesFrame:SetSize(1100*scaleMulti, 720*scaleMulti)
WritRacesFrame.Background = WritRacesFrame:CreateTexture(nil, "BACKGROUND")
WritRacesFrame.Background:SetSize(WritRacesFrame:GetSize())
WritRacesFrame.Background:SetPoint("CENTER", WritRacesFrame, "CENTER", 0, 0)
WritRacesFrame.Background:SetTexture("Interface/Doomhammer/MorphFrame_undead")
WritRacesFrame.Background:SetTexCoord(CoordCalc(2048, 14, 15, 1100, 720))

WritRacesFrame:SetToplevel(true)
WritRacesFrame:SetClampedToScreen(true)

WritRacesFrame:SetMovable(false)
WritRacesFrame:EnableMouse(true)
WritRacesFrame:SetScript("OnDragStart", WritRacesFrame.StartMoving)
WritRacesFrame:SetScript("OnHide", WritRacesFrame.StopMovingOrSizing)
WritRacesFrame:SetScript("OnDragStop", WritRacesFrame.StopMovingOrSizing)

WritRacesFrame.CloseButton = CreateFrame("Button", nil, WritRacesFrame, "UIPanelCloseButton")
WritRacesFrame.CloseButton:SetSize(30, 30)
WritRacesFrame.CloseButton:SetPoint("TOPRIGHT", WritRacesFrame, "TOPRIGHT", 0, 0)
WritRacesFrame.CloseButton:EnableMouse(true)
WritRacesFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySoundFile("Sound/Doomhammer/ui_blizzardstore_close.ogg", "SFX")
	HideUIPanel(WritRacesFrame)
	WritRaceHandlers.HideFrame()
	end)


 WritRacesParentFrame.creatureModel = CreateFrame("PlayerModel", nil, WritRacesParentFrame)
-- WritRacesParentFrame.creatureModel = CreateFrame("DressUpModel", nil, WritRacesParentFrame) (new)
WritRacesParentFrame.creatureModel:SetPoint("CENTER", WritRacesParentFrame, "CENTER", 150, 35)
WritRacesParentFrame.creatureModel:SetSize(387, 450)
--

WritRacesParentFrame.creaturePicture = WritRacesParentFrame:CreateTexture(nil, "OVERLAY")
WritRacesParentFrame.creaturePicture:SetPoint("CENTER", WritRacesParentFrame, "CENTER", 150, 40)
WritRacesParentFrame.creaturePicture:SetSize(387, 435)

--

WritRacesFrame:Hide()

WritRacesFrame.MorphButton = {}
WritRacesFrame.MorphButton[1] = CreateFrame("Button", nil, WritRacesFrame)
WritRacesFrame.MorphButton[2] = CreateFrame("Button", nil, WritRacesFrame)
WritRacesFrame.MorphButton[3] = CreateFrame("Button", nil, WritRacesFrame)
WritRacesFrame.MorphButton[4] = CreateFrame("Button", nil, WritRacesFrame)
WritRacesFrame.MorphButton[5] = CreateFrame("Button", nil, WritRacesFrame)
WritRacesFrame.MorphButton[6] = CreateFrame("Button", nil, WritRacesFrame)

WritRacesFrame.MorphButton[1].button_text = WritRacesFrame.MorphButton[1]:CreateFontString()
WritRacesFrame.MorphButton[2].button_text = WritRacesFrame.MorphButton[2]:CreateFontString()
WritRacesFrame.MorphButton[3].button_text = WritRacesFrame.MorphButton[3]:CreateFontString()
WritRacesFrame.MorphButton[4].button_text = WritRacesFrame.MorphButton[4]:CreateFontString()
WritRacesFrame.MorphButton[5].button_text = WritRacesFrame.MorphButton[5]:CreateFontString()
WritRacesFrame.MorphButton[6].button_text = WritRacesFrame.MorphButton[6]:CreateFontString()







--


local WRFSubmitButton = CreateFrame("Button", "SubmitButton", WritRacesFrame)
WRFSubmitButton:SetSize(175, 55)
WRFSubmitButton:SetPoint("BOTTOMRIGHT", WritRacesFrame, -155, 25)
WRFSubmitButton:EnableMouse(true)
WRFSubmitButton:SetNormalTexture("Interface/Doomhammer/MorphFrame_undead")
WRFSubmitButton:GetNormalTexture():SetTexCoord(CoordCalc(2048, 933, 815, 403, 129))
WRFSubmitButton:SetHighlightTexture("Interface/Doomhammer/MorphFrame_undead")
WRFSubmitButton:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 933, 815, 403, 129))
WRFSubmitButton:SetPushedTexture("Interface/Doomhammer/MorphFrame_undead")
WRFSubmitButton:GetPushedTexture():SetTexCoord(CoordCalc(2048, 933, 1075, 403, 130))

local WRFSubmitButton_text = WRFSubmitButton:CreateFontString("WRFSubmitButton_text")
WRFSubmitButton_text:SetFont(newfont, 18, "OUTLINE")
WRFSubmitButton_text:SetSize(100, 10)
WRFSubmitButton_text:SetPoint("CENTER", 0, 0)
WRFSubmitButton_text:SetText("Morph")

local WRFResetButton = CreateFrame("Button", "WRFResetButton", WritRacesFrame)
WRFResetButton:SetSize(175, 55)
WRFResetButton:SetPoint("BOTTOMRIGHT", WritRacesFrame, -330, 25)
WRFResetButton:EnableMouse(true)
WRFResetButton:SetNormalTexture("Interface/Doomhammer/MorphFrame_undead")
WRFResetButton:GetNormalTexture():SetTexCoord(CoordCalc(2048, 933, 815, 403, 129))
WRFResetButton:SetHighlightTexture("Interface/Doomhammer/MorphFrame_undead")
WRFResetButton:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 933, 815, 403, 129))
WRFResetButton:SetPushedTexture("Interface/Doomhammer/MorphFrame_undead")
WRFResetButton:GetPushedTexture():SetTexCoord(CoordCalc(2048, 933, 1075, 403, 130))

local WRFResetButton_text = WRFResetButton:CreateFontString("WRFResetButton_text")
WRFResetButton_text:SetFont(newfont, 18, "OUTLINE")
WRFResetButton_text:SetSize(100, 10)
WRFResetButton_text:SetPoint("CENTER", 0, 0)
WRFResetButton_text:SetText("Reset")

local WRFRightArrowButton = CreateFrame("Button", "WRFRightArrowButton", WritRacesFrame)
WRFRightArrowButton:SetSize(75, 75)
WRFRightArrowButton:SetPoint("BOTTOMLEFT", WritRacesFrame, 180, 20)
WRFRightArrowButton:EnableMouse(true)
WRFRightArrowButton:SetNormalTexture("Interface/Doomhammer/MorphFrame_undead")
WRFRightArrowButton:GetNormalTexture():SetTexCoord(CoordCalc(2048, 514, 790, 240, 210))
WRFRightArrowButton:SetHighlightTexture("Interface/Doomhammer/MorphFrame_undead")
WRFRightArrowButton:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 514, 790, 240, 210))
WRFRightArrowButton:SetPushedTexture("Interface/Doomhammer/MorphFrame_undead")
WRFRightArrowButton:GetPushedTexture():SetTexCoord(CoordCalc(2048, 514, 1025, 240, 210))

local WRFRightArrowButton_text = WRFRightArrowButton:CreateFontString("WRFRightArrowButton_text")
WRFRightArrowButton_text:SetFont(newfont, 24)
WRFRightArrowButton_text:SetSize(100, 10)
WRFRightArrowButton_text:SetPoint("CENTER", 0, 8)
WRFRightArrowButton_text:SetText("")

local WRFLeftArrowButton = CreateFrame("Button", "WRFLeftArrowButton", WritRacesFrame)
WRFLeftArrowButton:SetSize(75, 75)
WRFLeftArrowButton:SetPoint("BOTTOMLEFT", WritRacesFrame, 25, 20)
WRFLeftArrowButton:EnableMouse(true)

WRFLeftArrowButton:SetNormalTexture("Interface/Doomhammer/MorphFrame_undead")
WRFLeftArrowButton:GetNormalTexture():SetTexCoord(CoordCalc(2048, 274, 789, 240, 210))
WRFLeftArrowButton:SetHighlightTexture("Interface/Doomhammer/MorphFrame_undead")
WRFLeftArrowButton:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 274, 789, 240, 210))
WRFLeftArrowButton:SetPushedTexture("Interface/Doomhammer/MorphFrame_undead")
WRFLeftArrowButton:GetPushedTexture():SetTexCoord(CoordCalc(2048, 274, 1024, 240, 210))

local WRFLeftArrowButton_text = WRFLeftArrowButton:CreateFontString("WRFLeftArrowButton_text")
WRFLeftArrowButton_text:SetFont(newfont, 24)
WRFLeftArrowButton_text:SetSize(100, 10)
WRFLeftArrowButton_text:SetPoint("CENTER", 0, 8)
WRFLeftArrowButton_text:SetText("")

function WritRaceHandlers.ButtonGen(player, MorphTable)


for i=1, 6 do
if i == 1 then
bCount = 0
else
bCount = -75
end

-- WritRacesFrame.MorphButton[i] = CreateFrame("Button", nil, WritRacesFrame)
WritRacesFrame.MorphButton[i]:SetSize(243, 68)
WritRacesFrame.MorphButton[i]:SetPoint("TOPLEFT", WritRacesFrame, "TOPLEFT", 15, (-55 + ((i - 1) * bCount)))
WritRacesFrame.MorphButton[i]:EnableMouse(true)
WritRacesFrame.MorphButton[i]:SetNormalTexture("Interface/Doomhammer/MorphFrame_undead")
WritRacesFrame.MorphButton[i]:GetNormalTexture():SetTexCoord(CoordCalc(2048, 0, 774, 253, 106))
WritRacesFrame.MorphButton[i]:SetHighlightTexture("Interface/Doomhammer/MorphFrame_undead")
WritRacesFrame.MorphButton[i]:GetHighlightTexture():SetTexCoord(CoordCalc(2048, 0, 774, 253, 106))

-- WritRacesFrame.MorphButton[i].button_text = WritRacesFrame.MorphButton[i]:CreateFontString()
WritRacesFrame.MorphButton[i].button_text:SetFont(newfont, 18, "OUTLINE")
WritRacesFrame.MorphButton[i].button_text:SetSize(125, 50)
WritRacesFrame.MorphButton[i].button_text:SetPoint("CENTER", 0, 0)
WritRacesFrame.MorphButton[i].button_text:SetText(MorphTable[i][4])

if i <= #MorphTable then


		WritRacesFrame.MorphButton[i].Text = MorphTable[i][4]
		WritRacesFrame.MorphButton[i].Morph = MorphTable[i][3]
		WritRacesFrame.MorphButton[i].File = MorphTable[i][5]
		WritRacesFrame.MorphButton[i].List = 0
		--
		WritRacesFrame.MorphButton[i].TopX = MorphTable[i][6]
		WritRacesFrame.MorphButton[i].TopY = MorphTable[i][7]
		WritRacesFrame.MorphButton[i].SizeX = MorphTable[i][8]
		WritRacesFrame.MorphButton[i].SizeY = MorphTable[i][9]

		--


		WritRacesFrame.MorphButton[i]:Show()




WritRacesFrame.MorphButton[i]:SetScript("OnClick", function(self)
	PlaySound("igChatScrollUp", "SFX")
	WritRacesParentFrame.creatureModel:ClearModel()

	WritRacesParentFrame.creaturePicture:Show()
	WritRacesParentFrame.creaturePicture:SetTexture("Interface/Doomhammer/"..WritRacesFrame.MorphButton[i].File.."") -- << this is the problem here


--	WritRacesParentFrame.creaturePicture:SetTexCoord(CoordsToTexCoords(2048, MorphTable[i][6], MorphTable[i][7], MorphTable[i][8], MorphTable[i][9]))
	WritRacesParentFrame.creaturePicture:SetTexCoord(CoordCalc(2048, WritRacesFrame.MorphButton[i].TopX, WritRacesFrame.MorphButton[i].TopY, WritRacesFrame.MorphButton[i].SizeX, WritRacesFrame.MorphButton[i].SizeY))


	ButtonID = i
end)

end


end
end


function WritRaceHandlers.ModifyList(player, list, MorphTable, direction)

	local v = 0
	local b = list + 1
	local wrf1, wrf2, wrf3, wrf4 = 0, 0, 0, 0

	WritRacesParentFrame.creatureModel:ClearModel()
	WritRacesFrame.MorphButton[1]:Hide()
	WritRacesFrame.MorphButton[2]:Hide()
	WritRacesFrame.MorphButton[3]:Hide()
	WritRacesFrame.MorphButton[4]:Hide()
	WritRacesFrame.MorphButton[5]:Hide()
	WritRacesFrame.MorphButton[6]:Hide()

	if direction == true then

		
		for i = 1, 6 do
				
				v = (6 * (b)) + i


				if v <= #MorphTable then
					if MorphTable[v] then

						WritRacesParentFrame.creaturePicture:SetTexture()
						WritRacesParentFrame.creaturePicture:Hide()
						WritRacesParentFrame.creaturePicture:Show()

						WritRacesFrame.MorphButton[i]:Show()
						WritRacesFrame.MorphButton[i].Morph = MorphTable[v][3]
						WritRacesFrame.MorphButton[i].File = MorphTable[v][5]
						WritRacesFrame.MorphButton[i].List = b
						WritRacesFrame.MorphButton[i].button_text:SetText(MorphTable[v][4])


						WritRacesFrame.MorphButton[i].TopX = MorphTable[v][6]
						WritRacesFrame.MorphButton[i].TopY = MorphTable[v][7]
						WritRacesFrame.MorphButton[i].SizeX = MorphTable[v][8]
						WritRacesFrame.MorphButton[i].SizeY = MorphTable[v][9]

						local wrf1 = WritRacesFrame.MorphButton[i].TopX
						local wrf2 = WritRacesFrame.MorphButton[i].TopY
						local wrf3 = WritRacesFrame.MorphButton[i].SizeX
						local wrf4 = WritRacesFrame.MorphButton[i].SizeY

						WritRacesParentFrame.creaturePicture:SetTexture("Interface/Doomhammer/"..WritRacesFrame.MorphButton[i].File.."")

					--	WritRacesParentFrame.creaturePicture:SetTexCoord(CoordCalc(2048, WritRacesFrame.MorphButton[v].TopX, WritRacesFrame.MorphButton[v].TopY, WritRacesFrame.MorphButton[v].SizeX, WritRacesFrame.MorphButton[v].SizeY))
						WritRacesParentFrame.creaturePicture:SetTexCoord(CoordCalc(2048, wrf1, wrf2, wrf3, wrf4))
					else
						WritRacesFrame.MorphButton[i]:Hide()
					end
					

				elseif v > #MorphTable then
 

				end

			
			
		end
		
		v = 0
	end

	if direction == false then

		for i = 1, 6 do

			WritRacesFrame.MorphButton[i]:Show()
			WritRacesFrame.MorphButton[i].Morph = MorphTable[i][3]
			WritRacesFrame.MorphButton[i].File = MorphTable[i][5]
			WritRacesFrame.MorphButton[i].button_text:SetText(MorphTable[i][4])
			WritRacesFrame.MorphButton[i].List = 0


			
			WritRacesFrame.MorphButton[i].TopX = MorphTable[i][6]
			WritRacesFrame.MorphButton[i].TopY = MorphTable[i][7]
			WritRacesFrame.MorphButton[i].SizeX = MorphTable[i][8]
			WritRacesFrame.MorphButton[i].SizeY = MorphTable[i][9]

			local wrf1 = WritRacesFrame.MorphButton[i].TopX
			local wrf2 = WritRacesFrame.MorphButton[i].TopY
			local wrf3 = WritRacesFrame.MorphButton[i].SizeX
			local wrf4 = WritRacesFrame.MorphButton[i].SizeY


			WritRacesParentFrame.creaturePicture:SetTexture("Interface/Doomhammer/"..WritRacesFrame.MorphButton[i].File.."")

			WritRacesParentFrame.creaturePicture:SetTexCoord(CoordCalc(2048, wrf1, wrf2, wrf3, wrf4))

		end
	end

end

function WritRaceHandlers.ShowFrame(player, MorphTable)
    WritRacesFrame:Show()
	WritRacesParentFrame.creaturePicture:Hide()
--	PlaySoundFile("Sound/Interface/PickUp/PutDownParchment_Paper.wav", "SFX")
	PlaySoundFile("Sound/Doomhammer/ui_blizzardstore_open.ogg", "SFX")
	WritRacesParentFrame.creatureModel:SetModel("Interface\\Buttons\\talktomequestion_white.mdx")

end

function WritRaceHandlers.SetBackground(player, BackgroundChoice)

	WritRacesFrame.Background:SetTexture("Interface/Doomhammer/"..BackgroundChoice.."")
end

local function SubmitMorph(player, btn)
PlaySoundFile("Sound/Doomhammer/ui_blizzardstore_confirmpurchase.ogg", "SFX")
if ButtonID > 0 then

AIO.Handle("WritRaces", "PassToSQL", WritRacesFrame.MorphButton[ButtonID].Morph)
end

end

local function ResetMorph(player, btn)
PlaySound("igChatScrollUp", "SFX")
AIO.Handle("WritRaces", "Reset")

end

local function RetrieveTable_Left(player, btn)

AIO.Handle("WritRaces", "RetrieveTable_Frame", 0, false)

end

local function RetrieveTable_Right(player, btn)

AIO.Handle("WritRaces", "RetrieveTable_Frame", WritRacesFrame.MorphButton[1].List, true)

end

WRFSubmitButton:SetScript("OnClick", SubmitMorph)
WRFResetButton:SetScript("OnClick", ResetMorph)
WRFLeftArrowButton:SetScript("OnClick", RetrieveTable_Left)
WRFRightArrowButton:SetScript("OnClick", RetrieveTable_Right)
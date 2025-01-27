local AIO = AIO or require("AIO") and require("pollmaster_main")

if AIO.AddAddon() then
    return
end

local PollmasterHandlers = AIO.AddHandlers("AIOPollmaster", {})

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

--
--

PollmasterParentFrame = CreateFrame("Frame", "PollmasterParentFrame", UIParent)
local PollmasterFrame = PollmasterParentFrame

local scaleMulti = 0.85
PollmasterFrame:SetPoint("LEFT", 40, 0)
PollmasterFrame:Hide()

PollmasterFrame:SetSize(1100*scaleMulti, 720*scaleMulti)
PollmasterFrame.Background = PollmasterFrame:CreateTexture(nil, "BACKGROUND")
PollmasterFrame.Background:SetSize(PollmasterFrame:GetSize())
PollmasterFrame.Background:SetPoint("CENTER", PollmasterFrame, "CENTER", 25, 100)
PollmasterFrame.Background:SetTexture("Interface/Doomhammer/TestFrame4")
-- PollmasterFrame.Background:SetTexCoord(CoordsToTexCoords(2048, 5, 0, 1070, 702))
PollmasterFrame.Background:SetTexCoord(CoordsToTexCoords(2048, 0, 0, 1100, 720))

PollmasterFrame:SetToplevel(true)
PollmasterFrame:SetClampedToScreen(true)
-- Enable dragging of PollmasterFrame
PollmasterFrame:SetMovable(false)
PollmasterFrame:EnableMouse(true)
PollmasterFrame:SetScript("OnDragStart", PollmasterFrame.StartMoving)
PollmasterFrame:SetScript("OnHide", PollmasterFrame.StopMovingOrSizing)
PollmasterFrame:SetScript("OnDragStop", PollmasterFrame.StopMovingOrSizing)

PollmasterFrame.Title = PollmasterFrame:CreateFontString()
PollmasterFrame.Title:SetFont("Fonts\\FRIZQT__.TTF", 24)
-- PollmasterFrame.Title:SetShadowOffset(1, -1)
PollmasterFrame.Title:SetPoint("TOP", PollmasterFrame, "TOP", -250, 55)
PollmasterFrame.Title:SetText("|cff030104Polls|r")

PollmasterFrame.CloseButton = CreateFrame("Button", nil, PollmasterFrame, "UIPanelCloseButton")
PollmasterFrame.CloseButton:SetSize(30, 30)
PollmasterFrame.CloseButton:SetPoint("TOPRIGHT", PollmasterFrame, "TOPRIGHT", 15, 90)
PollmasterFrame.CloseButton:EnableMouse(true)
PollmasterFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySound("INTERFACESOUND_CHARWINDOWCLOSE", "SFX")
	HideUIPanel(PollmasterFrame)
	PollmasterHandlers.HideFrame()
	end)
	
	
-- option buttons



PollmasterFrame.YesButton = CreateFrame("Button", nil, PollmasterFrame, "UIPanelButtonTemplate")
PollmasterFrame.YesButton:SetSize(100, 30)
PollmasterFrame.YesButton:SetPoint("BOTTOM", PollmasterFrame, "BOTTOM", 20, 130)
PollmasterFrame.YesButton:EnableMouse(true)

PollmasterFrame.YesButton.YesButtonText = PollmasterFrame.YesButton:CreateFontString()
PollmasterFrame.YesButton.YesButtonText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
PollmasterFrame.YesButton.YesButtonText:SetPoint("CENTER", PollmasterFrame.YesButton, 0, 0)
PollmasterFrame.YesButton.YesButtonText:SetText("Yes")


PollmasterFrame.NoButton = CreateFrame("Button", nil, PollmasterFrame, "UIPanelButtonTemplate")
PollmasterFrame.NoButton:SetSize(100, 30)
PollmasterFrame.NoButton:SetPoint("BOTTOM", PollmasterFrame, "BOTTOM", 280, 130)
PollmasterFrame.NoButton:EnableMouse(true)

PollmasterFrame.NoButton.NoButtonText = PollmasterFrame.NoButton:CreateFontString()
PollmasterFrame.NoButton.NoButtonText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
PollmasterFrame.NoButton.NoButtonText:SetPoint("CENTER", PollmasterFrame.NoButton, 0, 0)
PollmasterFrame.NoButton.NoButtonText:SetTextColor(255, 255, 255)
PollmasterFrame.NoButton.NoButtonText:SetText("No")



PollmasterFrame.SkipButton = CreateFrame("Button", nil, PollmasterFrame, "UIPanelButtonTemplate")
PollmasterFrame.SkipButton:SetSize(150, 30)
PollmasterFrame.SkipButton:SetPoint("BOTTOM", PollmasterFrame, "BOTTOM", 150, 130)
PollmasterFrame.SkipButton:EnableMouse(true)

PollmasterFrame.SkipButton.SkipButtonText = PollmasterFrame.SkipButton:CreateFontString()
PollmasterFrame.SkipButton.SkipButtonText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
PollmasterFrame.SkipButton.SkipButtonText:SetPoint("CENTER", PollmasterFrame.SkipButton, 0, 0)
PollmasterFrame.SkipButton.SkipButtonText:SetText("Skip Question")

-- poll buttons



PollmasterFrame.PollButton = {}
function PollmasterHandlers.ButtonGenLoop()

for i=1, 6 do
if i == 1 then
bCount = 0
else
bCount = -80
end

PollmasterFrame.PollButton[i] = CreateFrame("Button", nil, PollmasterFrame)
PollmasterFrame.PollButton[i]:SetSize(243, 88)
PollmasterFrame.PollButton[i]:SetPoint("TOPLEFT", PollmasterFrame, "TOPLEFT", 65, (15 + ((i - 1) * bCount)))
PollmasterFrame.PollButton[i]:EnableMouse(true)
PollmasterFrame.PollButton[i]:SetNormalTexture("Interface/Doomhammer/TestFrame4")
PollmasterFrame.PollButton[i]:SetHighlightTexture("Interface/Doomhammer/TestFrame4")

AIO.Handle("AIOPollmaster", "GenerateTexture", i)

-- PollmasterFrame.PollButton[i]:GetNormalTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 1037, 285, 1157))
-- PollmasterFrame.PollButton[i]:GetHighlightTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 1037, 285, 1157))

PollmasterFrame.PollButton[i].PollText = PollmasterFrame.PollButton[i]:CreateFontString()
PollmasterFrame.PollButton[i].PollText:SetFont("Fonts\\FRIZQT__.TTF", 14, "OUTLINE")
PollmasterFrame.PollButton[i].PollText:SetPoint("CENTER", PollmasterFrame.PollButton[i], 0, 0)
PollmasterFrame.PollButton[i].PollText:SetAllPoints(PollmasterFrame.PollButton[i])
PollmasterFrame.PollButton[i].PollText:SetWordWrap(true)
PollmasterFrame.PollButton[i].PollText:SetText("Testing...")

PollmasterFrame.PollButton[i]:Hide()


PollmasterFrame.PollButton[i]:SetScript("OnClick", function(self)
	ii = i
	
	AIO.Handle("AIOPollmaster", "PollButtonTextBox", ii, self:GetName())
	PlaySound("igChatScrollDown", "SFX")

end)
end
end

-- 
PollmasterTextFrame = CreateFrame("Frame", "PollmasterTextFrame", PollmasterFrame)
PollmasterTextFrame:SetPoint("CENTER", 165, 140)
PollmasterTextFrame:Hide()

PollmasterTextFrame:SetSize(660*scaleMulti, 532*scaleMulti)

PollmasterTextFrame.WriteUp = PollmasterTextFrame:CreateFontString()
PollmasterTextFrame.WriteUp:SetFont("Fonts\\FRIZQT__.TTF", 14)
PollmasterTextFrame.WriteUp:SetPoint("TOPLEFT", PollmasterTextFrame, "TOPLEFT", 0, 0)
PollmasterTextFrame.WriteUp:SetTextColor(0, 0, 0)
PollmasterTextFrame.WriteUp:SetAllPoints(PollmasterTextFrame)
PollmasterTextFrame.WriteUp:SetWordWrap(true)


-- This enables saving of the position of the PollmasterFrame over reload of the UI or restarting game
AIO.SavePosition(PollmasterFrame)

-- poll button generation
-- for every index in pollmastercache, create a list of buttons whose positions are offset by like 40 per index, i.e. 1*40, 2*40, 3*40, etc...

function PollmasterHandlers.GeneratePollButtons(player, cacheTable, playerCache)
	PollmasterTextFrame.WriteUp:SetText("<-- Pick a button on the left.")
	buttonListing = {}
	for k in pairs(cacheTable) do
					PollmasterFrame.PollButton[k].PollText:SetText(cacheTable[k][4])
					PollmasterFrame.PollButton[k]:Show()
					table.insert(buttonListing, {k, cacheTable[k][1]})
					
					
			
	end

end

function PollmasterHandlers.GenerateTexture(player, cacheTable, playerCache, button, questionanswer)
	--[[
	need to determine multiple things here:
	1. what question is gonna belong to each button
	2. if that question has already been answered, if the answer is greater than 0
	]]--

	if questionanswer > 0 then
		PollmasterFrame.PollButton[button]:GetNormalTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 925, 285, 1045))
		PollmasterFrame.PollButton[button]:GetHighlightTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 925, 285, 1045)) 
	else
		PollmasterFrame.PollButton[button]:GetNormalTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 1037, 285, 1157))
		PollmasterFrame.PollButton[button]:GetHighlightTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 1037, 285, 1157))
	end



end

function PollmasterHandlers.GenerateUIText(player, cacheTable, buttonID)

	PollmasterTextFrame.WriteUp:SetText(cacheTable[buttonID][5])

end

function PollmasterHandlers.RedoAnsweringQuestionID(player, questionID)

	AnsweringQuestionID = questionID

end

local function UpdateTextureForQuestions()
PlaySound("GLUECHARCUSTOMIZATIONMOUSEDOWN", "SFX")
PollmasterFrame.PollButton[ii]:GetNormalTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 925, 285, 1045))
PollmasterFrame.PollButton[ii]:GetHighlightTexture():SetTexCoord(CoordsToTexCoords(2048, 2, 925, 285, 1045))

end
-- 
-- A handler triggered by using AIO.Handle(player, "AIOExample", "ShowFrame")
-- on server side.
function PollmasterHandlers.ShowFrame(player)
	PlaySound("AuctionWindowOpen", "SFX")
	PollmasterTextFrame:Show()
    PollmasterFrame:Show()
end

function PollmasterHandlers.HideFrame(player)
PollmasterTextFrame:Hide()
PollmasterFrame:Hide()

end

local function ReplyButtonYes(btn)
	local answer = 1
	if ii > 0 then
		AIO.Handle("AIOPollmaster", "Reply", ii, answer, btn:GetName())
		-- needs to be changed to supply the actual id of the question in the table instead of activePollButton
		UpdateTextureForQuestions()
	end
	PlaySound("igChatScrollUp", "SFX")
		
end

local function ReplyButtonNo(btn)
	local answer = 2
	if ii > 0 then
		AIO.Handle("AIOPollmaster", "Reply", ii, answer, btn:GetName())
		UpdateTextureForQuestions()
	end
	PlaySound("igChatScrollUp", "SFX")
		
end

local function ReplyButtonSkip(btn)
	local answer = 3
	if ii > 0 then
		AIO.Handle("AIOPollmaster", "Reply", ii, answer, btn:GetName())
		UpdateTextureForQuestions()
	end
	PlaySound("igChatScrollUp", "SFX")
		
end




PollmasterFrame.YesButton:SetScript("OnClick", ReplyButtonYes)
PollmasterFrame.NoButton:SetScript("OnClick", ReplyButtonNo)
PollmasterFrame.SkipButton:SetScript("OnClick", ReplyButtonSkip)



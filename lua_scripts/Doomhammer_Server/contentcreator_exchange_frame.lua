local AIO = AIO or require("AIO") and require("contentcreator_exchange_server")

if AIO.AddAddon() then
    return
end

local ExchangeHandlers = AIO.AddHandlers("AIO_EXG", {})
local newfont = "Fonts\\FRIZQT__.TTF"


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

Exg_ParentFrame = CreateFrame("Frame", "Exg_ParentFrame", UIParent)
Exg_ParentFrame:Hide()

Exg_ConfirmFrame = CreateFrame("Frame", "Exg_ConfirmFrame", UIParent)
Exg_ConfirmFrame:Hide()
local frametex = "Interface/Doomhammer/ExchangeAtlas"





local scaleMulti = 0.85


Exg_ParentFrame:SetPoint("CENTER", 0, 0)
Exg_ParentFrame:SetSize(1000*scaleMulti, 700*scaleMulti)
Exg_ParentFrame:SetToplevel(true)
Exg_ParentFrame:SetClampedToScreen(true)
Exg_ParentFrame:SetMovable(true)
Exg_ParentFrame:EnableMouse(true)
Exg_ParentFrame:RegisterForDrag("LeftButton")
Exg_ParentFrame:SetScript("OnDragStart", Exg_ParentFrame.StartMoving)
Exg_ParentFrame:SetScript("OnHide", Exg_ParentFrame.StopMovingOrSizing)
Exg_ParentFrame:SetScript("OnDragStop", Exg_ParentFrame.StopMovingOrSizing)

Exg_ParentFrame.Background = Exg_ParentFrame:CreateTexture(nil, "BACKGROUND")
Exg_ParentFrame.Background:SetSize(Exg_ParentFrame:GetSize())
Exg_ParentFrame.Background:SetPoint("CENTER", Exg_ParentFrame, "CENTER", 0, 0)
Exg_ParentFrame.Background:SetTexture(frametex)
Exg_ParentFrame.Background:SetTexCoord(CoordCalc(2048, 0, 0, 1000, 700))

Exg_ParentFrame.CloseButton = CreateFrame("Button", nil, Exg_ParentFrame, "UIPanelCloseButton")
Exg_ParentFrame.CloseButton:SetSize(30, 30)
Exg_ParentFrame.CloseButton:SetPoint("TOPRIGHT", Exg_ParentFrame, "TOPRIGHT", 0, 0)
Exg_ParentFrame.CloseButton:EnableMouse(true)
Exg_ParentFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySoundFile("Sound/Interface/ui_blizzardstore_close.ogg", "SFX")
	HideUIPanel(Exg_ParentFrame)
    HideUIPanel(Exg_ConfirmFrame)
	ExchangeHandlers.HideFrame()
	end)

Exg_ConfirmFrame:SetPoint("CENTER", 0, 0)
Exg_ConfirmFrame:SetSize(500*scaleMulti, 400*scaleMulti)
Exg_ConfirmFrame:SetToplevel(true)
Exg_ConfirmFrame:SetClampedToScreen(true)
Exg_ConfirmFrame:SetMovable(false)
Exg_ConfirmFrame:EnableMouse(true)
Exg_ConfirmFrame:SetScript("OnDragStart", Exg_ConfirmFrame.StartMoving)
Exg_ConfirmFrame:SetScript("OnHide", Exg_ConfirmFrame.StopMovingOrSizing)
Exg_ConfirmFrame:SetScript("OnDragStop", Exg_ConfirmFrame.StopMovingOrSizing)

Exg_ConfirmFrame.Background = Exg_ConfirmFrame:CreateTexture(nil, "BACKGROUND")
Exg_ConfirmFrame.Background:SetSize(Exg_ConfirmFrame:GetSize())
Exg_ConfirmFrame.Background:SetPoint("CENTER", Exg_ConfirmFrame, "CENTER", 0, 0)
Exg_ConfirmFrame.Background:SetTexture(frametex)
Exg_ConfirmFrame.Background:SetTexCoord(CoordCalc(2048, 0, 762, 500, 400))

Exg_ConfirmFrame.CloseButton = CreateFrame("Button", nil, Exg_ConfirmFrame, "UIPanelCloseButton")
Exg_ConfirmFrame.CloseButton:SetSize(30, 30)
Exg_ConfirmFrame.CloseButton:SetPoint("TOPRIGHT", Exg_ConfirmFrame, "TOPRIGHT", 0, 0)
Exg_ConfirmFrame.CloseButton:EnableMouse(true)
Exg_ConfirmFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySoundFile("Sound/Interface/GuildVaultClose.wav", "SFX")
	HideUIPanel(Exg_ConfirmFrame)
	end)


Exg_ParentFrame:SetScript("OnDragStart", function(self, button)
	self:StartMoving()

end)
Exg_ParentFrame:SetScript("OnDragStop", function(self)
	self:StopMovingOrSizing()

end)

function ExchangeHandlers.ShowFrame(player)

	PlaySound("AuctionWindowOpen", "SFX")
    Exg_ParentFrame:Show()
end

function ExchangeHandlers.HideFrame(player)

    Exg_ParentFrame:Hide()
    
    end


local Exg_parentFrameTitle = Exg_ParentFrame:CreateFontString("Exg_parentFrameTitle")
Exg_parentFrameTitle:SetFont(newfont, 36, "OUTLINE")
Exg_parentFrameTitle:SetSize(200, 20)
Exg_parentFrameTitle:SetPoint("TOP", 0, -40)
Exg_parentFrameTitle:SetText("The Exchange")

local Exg_WritsTitle = Exg_ParentFrame:CreateFontString("Exg_WritsTitle")
Exg_WritsTitle:SetFont(newfont, 26, "OUTLINE")
Exg_WritsTitle:SetSize(100, 20)
Exg_WritsTitle:SetPoint("LEFT", 60, 0)
Exg_WritsTitle:SetText("Writs")

local Exg_GreaterWritsTitle = Exg_ParentFrame:CreateFontString("Exg_GreaterWritsTitle")
Exg_GreaterWritsTitle:SetFont(newfont, 26, "OUTLINE")
Exg_GreaterWritsTitle:SetSize(100, 40)
Exg_GreaterWritsTitle:SetPoint("LEFT", 60, 90)
Exg_GreaterWritsTitle:SetText("Greater")

local Exg_GreaterWritsTitle2 = Exg_ParentFrame:CreateFontString("Exg_GreaterWritsTitle2")
Exg_GreaterWritsTitle2:SetFont(newfont, 26, "OUTLINE")
Exg_GreaterWritsTitle2:SetSize(100, 40)
Exg_GreaterWritsTitle2:SetPoint("LEFT", 60, 65)
Exg_GreaterWritsTitle2:SetText("Writs")

local Exg_GoldTitle = Exg_ParentFrame:CreateFontString("Exg_GoldTitle")
Exg_GoldTitle:SetFont(newfont, 26, "OUTLINE")
Exg_GoldTitle:SetSize(100, 20)
Exg_GoldTitle:SetPoint("LEFT", 60, -90)
Exg_GoldTitle:SetText("Gold")

local Exg_CurrencyTitle = Exg_ParentFrame:CreateFontString("Exg_CurrencyTitle")
Exg_CurrencyTitle:SetFont(newfont, 26, "OUTLINE")
Exg_CurrencyTitle:SetSize(150, 20)
Exg_CurrencyTitle:SetPoint("LEFT", 40, 140)
Exg_CurrencyTitle:SetText("Currency")

local Exg_StorageTitle = Exg_ParentFrame:CreateFontString("Exg_StorageTitle")
Exg_StorageTitle:SetFont(newfont, 26, "OUTLINE")
Exg_StorageTitle:SetSize(150, 20)
Exg_StorageTitle:SetPoint("LEFT", 200, 140)
Exg_StorageTitle:SetText("Storage")


--

local Exg_WritCount = Exg_ParentFrame:CreateFontString("Exg_WritCount")
Exg_WritCount:SetFont(newfont, 26, "OUTLINE")
Exg_WritCount:SetSize(100, 20)
Exg_WritCount:SetPoint("LEFT", 220, 0)
Exg_WritCount:SetText("0")

local Exg_GoldCount_Gold = Exg_ParentFrame:CreateFontString("Exg_GoldCount_Gold")
Exg_GoldCount_Gold:SetFont(newfont, 20, "OUTLINE")
Exg_GoldCount_Gold:SetSize(100, 20)
Exg_GoldCount_Gold:SetPoint("LEFT", 180, -90) -- subtract 10 from this with every extra digit
Exg_GoldCount_Gold:SetText("0")

local Exg_GoldCount_Silver = Exg_ParentFrame:CreateFontString("Exg_GoldCount_Silver")
Exg_GoldCount_Silver:SetFont(newfont, 20, "OUTLINE")
Exg_GoldCount_Silver:SetSize(100, 20)
Exg_GoldCount_Silver:SetPoint("LEFT", 220, -90)
Exg_GoldCount_Silver:SetText("0")

local Exg_GoldCount_Copper = Exg_ParentFrame:CreateFontString("Exg_GoldCount_Copper")
Exg_GoldCount_Copper:SetFont(newfont, 20, "OUTLINE")
Exg_GoldCount_Copper:SetSize(100, 20)
Exg_GoldCount_Copper:SetPoint("LEFT", 260, -90)
Exg_GoldCount_Copper:SetText("0")

local Exg_GreaterWritCount = Exg_ParentFrame:CreateFontString("Exg_GreaterWritCount")
Exg_GreaterWritCount:SetFont(newfont, 26, "OUTLINE")
Exg_GreaterWritCount:SetSize(100, 40)
Exg_GreaterWritCount:SetPoint("LEFT", 220, 77.5)
Exg_GreaterWritCount:SetText("0")

Exg_ParentFrame.LesserWrit = Exg_ParentFrame:CreateTexture()
Exg_ParentFrame.LesserWrit:SetSize(32, 32)
Exg_ParentFrame.LesserWrit:SetPoint("CENTER", -380, 0)
Exg_ParentFrame.LesserWrit:SetTexture(frametex)
Exg_ParentFrame.LesserWrit:SetTexCoord(CoordCalc(2048, 1968, 1984, 64, 64))

Exg_ParentFrame.GreaterWrit = Exg_ParentFrame:CreateTexture()
Exg_ParentFrame.GreaterWrit:SetSize(32, 32)
Exg_ParentFrame.GreaterWrit:SetPoint("CENTER", -380, 75)
Exg_ParentFrame.GreaterWrit:SetTexture(frametex)
Exg_ParentFrame.GreaterWrit:SetTexCoord(CoordCalc(2048, 1904, 1984, 64, 64))

Exg_ParentFrame.GoldCoin = Exg_ParentFrame:CreateTexture()
Exg_ParentFrame.GoldCoin:SetSize(32, 30)
Exg_ParentFrame.GoldCoin:SetPoint("CENTER", -380, -90)
Exg_ParentFrame.GoldCoin:SetTexture(frametex)
Exg_ParentFrame.GoldCoin:SetTexCoord(CoordCalc(2048, 2032, 2033, 16, 15))
--
--
--

local Exg_DepositButton_Gold = CreateFrame("Button", "Exg_DepositButton_Gold", Exg_ParentFrame)
Exg_DepositButton_Gold:SetSize(150, 50)
Exg_DepositButton_Gold:SetPoint("LEFT", Exg_ParentFrame, 410, -95)
Exg_DepositButton_Gold:EnableMouse(true)
Exg_DepositButton_Gold:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Exg_DepositButton_Gold:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Exg_DepositButton_Gold:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Exg_DepositButton_Gold_text = Exg_DepositButton_Gold:CreateFontString("Exg_DepositButton_Gold_text")
Exg_DepositButton_Gold_text:SetFont(newfont, 16, "OUTLINE")
Exg_DepositButton_Gold_text:SetSize(100, 10)
Exg_DepositButton_Gold_text:SetPoint("CENTER", 0, 8)
Exg_DepositButton_Gold_text:SetText("Deposit")

local Exg_WithdrawButton_Gold = CreateFrame("Button", "Exg_WithdrawButton_Gold", Exg_ParentFrame)
Exg_WithdrawButton_Gold:SetSize(150, 50)
Exg_WithdrawButton_Gold:SetPoint("LEFT", Exg_ParentFrame, 600, -95)
Exg_WithdrawButton_Gold:EnableMouse(true)
Exg_WithdrawButton_Gold:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Exg_WithdrawButton_Gold:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Exg_WithdrawButton_Gold:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Exg_WithdrawButton_Gold_text = Exg_WithdrawButton_Gold:CreateFontString("Exg_WithdrawButton_Gold_text")
Exg_WithdrawButton_Gold_text:SetFont(newfont, 16, "OUTLINE")
Exg_WithdrawButton_Gold_text:SetSize(100, 10)
Exg_WithdrawButton_Gold_text:SetPoint("CENTER", 0, 8)
Exg_WithdrawButton_Gold_text:SetText("Withdraw")

--
--
--

local Exg_DepositButton_Writ = CreateFrame("Button", "Exg_DepositButton_Writ", Exg_ParentFrame)
Exg_DepositButton_Writ:SetSize(150, 50)
Exg_DepositButton_Writ:SetPoint("LEFT", Exg_ParentFrame, 410, -5)
Exg_DepositButton_Writ:EnableMouse(true)
Exg_DepositButton_Writ:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Exg_DepositButton_Writ:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Exg_DepositButton_Writ:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Exg_DepositButton_Writ_text = Exg_DepositButton_Writ:CreateFontString("Exg_DepositButton_Writ_text")
Exg_DepositButton_Writ_text:SetFont(newfont, 16, "OUTLINE")
Exg_DepositButton_Writ_text:SetSize(100, 10)
Exg_DepositButton_Writ_text:SetPoint("CENTER", 0, 8)
Exg_DepositButton_Writ_text:SetText("Deposit")

local Exg_WithdrawButton_Writ = CreateFrame("Button", "Exg_WithdrawButton_Writ", Exg_ParentFrame)
Exg_WithdrawButton_Writ:SetSize(150, 50)
Exg_WithdrawButton_Writ:SetPoint("LEFT", Exg_ParentFrame, 600, -5)
Exg_WithdrawButton_Writ:EnableMouse(true)
Exg_WithdrawButton_Writ:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Exg_WithdrawButton_Writ:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Exg_WithdrawButton_Writ:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Exg_WithdrawButton_Writ_text = Exg_WithdrawButton_Writ:CreateFontString("Exg_WithdrawButton_Writ_text")
Exg_WithdrawButton_Writ_text:SetFont(newfont, 16, "OUTLINE")
Exg_WithdrawButton_Writ_text:SetSize(100, 10)
Exg_WithdrawButton_Writ_text:SetPoint("CENTER", 0, 8)
Exg_WithdrawButton_Writ_text:SetText("Withdraw")

--
--
--

local Exg_DepositButton_GreaterWrit = CreateFrame("Button", "Exg_DepositButton_GreaterWrit", Exg_ParentFrame)
Exg_DepositButton_GreaterWrit:SetSize(150, 50)
Exg_DepositButton_GreaterWrit:SetPoint("LEFT", Exg_ParentFrame, 410, 72.5)
Exg_DepositButton_GreaterWrit:EnableMouse(true)
Exg_DepositButton_GreaterWrit:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Exg_DepositButton_GreaterWrit:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Exg_DepositButton_GreaterWrit:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Exg_DepositButton_GreaterWrit_text = Exg_DepositButton_GreaterWrit:CreateFontString("Exg_DepositButton_GreaterWrit_text")
Exg_DepositButton_GreaterWrit_text:SetFont(newfont, 16, "OUTLINE")
Exg_DepositButton_GreaterWrit_text:SetSize(100, 10)
Exg_DepositButton_GreaterWrit_text:SetPoint("CENTER", 0, 8)
Exg_DepositButton_GreaterWrit_text:SetText("Deposit")

local Exg_WithdrawButton_GreaterWrit = CreateFrame("Button", "Exg_WithdrawButton_GreaterWrit", Exg_ParentFrame)
Exg_WithdrawButton_GreaterWrit:SetSize(150, 50)
Exg_WithdrawButton_GreaterWrit:SetPoint("LEFT", Exg_ParentFrame, 600, 72.5)
Exg_WithdrawButton_GreaterWrit:EnableMouse(true)
Exg_WithdrawButton_GreaterWrit:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Exg_WithdrawButton_GreaterWrit:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Exg_WithdrawButton_GreaterWrit:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Exg_WithdrawButton_GreaterWrit_text = Exg_WithdrawButton_GreaterWrit:CreateFontString("Exg_WithdrawButton_GreaterWrit_text")
Exg_WithdrawButton_GreaterWrit_text:SetFont(newfont, 16, "OUTLINE")
Exg_WithdrawButton_GreaterWrit_text:SetSize(100, 10)
Exg_WithdrawButton_GreaterWrit_text:SetPoint("CENTER", 0, 8)
Exg_WithdrawButton_GreaterWrit_text:SetText("Withdraw")

--
--
--

local Exg_SubmitButton = CreateFrame("Button", "Exg_SubmitButton", Exg_ConfirmFrame)
Exg_SubmitButton:SetSize(150, 50)
Exg_SubmitButton:SetPoint("BOTTOM", Exg_ConfirmFrame, 0, 0)
Exg_SubmitButton:EnableMouse(true)
Exg_SubmitButton:SetNormalTexture("Interface/BUTTONS/UI-DialogBox-Button-Up")
Exg_SubmitButton:SetHighlightTexture("Interface/BUTTONS/UI-DialogBox-Button-Highlight")
Exg_SubmitButton:SetPushedTexture("Interface/BUTTONS/UI-DialogBox-Button-Down")

local Exg_SubmitButton_text = Exg_SubmitButton:CreateFontString("Exg_SubmitButton_text")
Exg_SubmitButton_text:SetFont(newfont, 16, "OUTLINE")
Exg_SubmitButton_text:SetSize(100, 10)
Exg_SubmitButton_text:SetPoint("CENTER", 0, 8)
Exg_SubmitButton_text:SetText("Submit")


local Exg_EditBox01 = CreateFrame("EditBox", "Exg_EditBox01", Exg_ConfirmFrame, "InputBoxTemplate")
Exg_EditBox01:SetSize(150, 100)
Exg_EditBox01:SetPoint("CENTER", Exg_ConfirmFrame, 0, 0)
Exg_EditBox01:ClearFocus()
Exg_EditBox01:SetAutoFocus(false)
Exg_EditBox01:SetNumeric(true)

local Exg_EditBox01Title = Exg_ConfirmFrame:CreateFontString("Exg_EditBox01Title")
Exg_EditBox01Title:SetFont(newfont, 14, "OUTLINE")
Exg_EditBox01Title:SetSize(100, 16)
Exg_EditBox01Title:SetPoint("CENTER", Exg_ConfirmFrame, 0, 20)
Exg_EditBox01Title:SetText("Name")

local Exg_EditBox02 = CreateFrame("EditBox", "Exg_EditBox02", Exg_ConfirmFrame, "InputBoxTemplate")
Exg_EditBox02:SetSize(150, 100)
Exg_EditBox02:SetPoint("CENTER", Exg_ConfirmFrame, 0, -60)
Exg_EditBox02:ClearFocus()
Exg_EditBox02:SetAutoFocus(false)
Exg_EditBox02:SetNumeric(true)

local Exg_EditBox02Title = Exg_ConfirmFrame:CreateFontString("Exg_EditBox02Title")
Exg_EditBox02Title:SetFont(newfont, 14, "OUTLINE")
Exg_EditBox02Title:SetSize(100, 16)
Exg_EditBox02Title:SetPoint("CENTER", Exg_ConfirmFrame, 0, -35)
Exg_EditBox02Title:SetText("Name")

local Exg_EditBox03 = CreateFrame("EditBox", "Exg_EditBox03", Exg_ConfirmFrame, "InputBoxTemplate")
Exg_EditBox03:SetSize(150, 100)
Exg_EditBox03:SetPoint("CENTER", Exg_ConfirmFrame, 0, 60)
Exg_EditBox03:ClearFocus()
Exg_EditBox03:SetAutoFocus(false)
Exg_EditBox03:SetNumeric(true)

local Exg_EditBox03Title = Exg_ConfirmFrame:CreateFontString("Exg_EditBox03Title")
Exg_EditBox03Title:SetFont(newfont, 14, "OUTLINE")
Exg_EditBox03Title:SetSize(100, 16)
Exg_EditBox03Title:SetPoint("CENTER", Exg_ConfirmFrame, 0, 80)
Exg_EditBox03Title:SetText("Name")

local Exg_ConfirmFrameTitle = Exg_ConfirmFrame:CreateFontString("Exg_ConfirmFrameTitle")
Exg_ConfirmFrameTitle:SetFont(newfont, 20, "OUTLINE")
Exg_ConfirmFrameTitle:SetSize(150, 16)
Exg_ConfirmFrameTitle:SetPoint("TOP", Exg_ConfirmFrame, 0, -30)
Exg_ConfirmFrameTitle:SetText("Name")

local function ShowEXGConfirmFrame(player, EXGtype, EXGmode)

    ExgTable = {}

    Exg_ConfirmFrame:Hide()
    Exg_ConfirmFrame:SetFrameLevel(5)
    Exg_ConfirmFrame:Show()

    Exg_EditBox01:SetText("")
    Exg_EditBox02:SetText("")
    Exg_EditBox03:SetText("")
    
    if EXGtype == 2 then

        Exg_EditBox02:Show()
        Exg_EditBox02Title:Show()

        Exg_EditBox03:Show()
        Exg_EditBox03Title:Show()

        Exg_ConfirmFrameTitle:SetText("Gold")

        Exg_EditBox01Title:SetText("Silver")
        Exg_EditBox02Title:SetText("Gold")
        Exg_EditBox03Title:SetText("Copper")
    end

    if EXGtype == 1 or EXGtype == 3 then

        Exg_EditBox02:Hide()
        Exg_EditBox02Title:Hide()

        Exg_EditBox03:Hide()
        Exg_EditBox03Title:Hide()

        if EXGtype == 1 then
            Exg_ConfirmFrameTitle:SetText("Writs")
            
        end

        if EXGtype == 3 then
            Exg_ConfirmFrameTitle:SetText("Greater Writs")
        end

        Exg_EditBox01Title:SetText("Amount")


    end

    ExgTable[1] = EXGtype
    ExgTable[2] = EXGmode
end


Exg_DepositButton_Writ:SetScript('OnClick', function()
    PlaySoundFile("Sound/Interface/PickUp/PutDownParchment_Paper.wav", "SFX")
    ShowEXGConfirmFrame(player, 1, 0)
 end)

 Exg_DepositButton_Gold:SetScript('OnClick', function()
    PlaySoundFile("Sound/Interface/PickUp/PickUpMetalSmall.wav", "SFX")
    ShowEXGConfirmFrame(player, 2, 0)
 end)

 Exg_DepositButton_GreaterWrit:SetScript('OnClick', function()
    PlaySoundFile("Sound/Interface/PickUp/PutDownParchment_Paper.wav", "SFX")
    ShowEXGConfirmFrame(player, 3, 0)
 end)

 Exg_WithdrawButton_Writ:SetScript('OnClick', function()
    PlaySoundFile("Sound/Interface/PickUp/PutDownParchment_Paper.wav", "SFX")
    ShowEXGConfirmFrame(player, 1, 1)
 end)

 Exg_WithdrawButton_Gold:SetScript('OnClick', function()
    PlaySoundFile("Sound/Interface/PickUp/PickUpMetalSmall.wav", "SFX")
    ShowEXGConfirmFrame(player, 2, 1)
 end)

 Exg_WithdrawButton_GreaterWrit:SetScript('OnClick', function()
    PlaySoundFile("Sound/Interface/PickUp/PutDownParchment_Paper.wav", "SFX")
    ShowEXGConfirmFrame(player, 3, 1)
 end)

 Exg_SubmitButton:SetScript('OnClick', function()
    
    if ExgTable[1] == 2 then

            if Exg_EditBox02:GetNumLetters() >= 1 then
                ExgTable[3] = Exg_EditBox02:GetText()
            end
            
            if Exg_EditBox02:GetNumLetters() == 0 then
                ExgTable[3] = 0
            end

            if Exg_EditBox01:GetNumLetters() >= 1 then
                ExgTable[4] = Exg_EditBox01:GetText()
            end
            
            if Exg_EditBox01:GetNumLetters() == 0 then
                ExgTable[4] = 0
            end

            if Exg_EditBox03:GetNumLetters() >= 1 then
                ExgTable[5] = Exg_EditBox03:GetText()
            end
            
            if Exg_EditBox03:GetNumLetters() == 0 then
                ExgTable[5] = 0
            end
    end

    if ExgTable[1] == 1 or ExgTable[1] == 3 then
        ExgTable[3] = Exg_EditBox01:GetText()

    end

    AIO.Handle("AIO_EXG", "TransferCurrency", ExgTable)
 end)

 function ExchangeHandlers.SetEXGText(player, picktitle, currencyamt)
    local newstring = ""
    local vartable = {}

    if picktitle == 1 and currencyamt then -- writ
        Exg_WritCount:SetText(currencyamt)
    end

    if picktitle == 2 and currencyamt then -- gold

        local result = {}
        for i = 1, #(tostring(currencyamt)) do
            result[i] = tostring(currencyamt):sub(i, i)
        end


        if #result >= 1 then
            Exg_GoldCount_Copper:SetText("0"..tostring(result[#result]))
        end

        if #result >= 2 then
            Exg_GoldCount_Copper:SetText(result[#result - 1]..result[#result - 0])
        end

        if #result >= 3 then
            Exg_GoldCount_Silver:SetText("0"..result[#result - 2])
        end
        
        if #result >= 4 then
            Exg_GoldCount_Silver:SetText(result[#result - 3]..result[#result - 2])
        end

        if #result >= 5 then
            for var=1, (#result - 4) do
                vartable[var] = result[var]
              end
              newstring = table.concat(vartable, "")
        
              Exg_GoldCount_Gold:SetText(newstring)
        end

    end

    if picktitle == 3 and currencyamt then -- gwrits
        Exg_GreaterWritCount:SetText(currencyamt)
    end

 end

function ExchangeHandlers.GreetingsVoice(player, faction)

    local xyz = math.random(1, 100)

    if xyz >= 45 and faction == 0 then
        local xyz2 = math.random(1, 4)
        

        if xyz2 == 1 then
            PlaySoundFile("Sound/Character/Dwarf/DwarfVocalMale/DwarfMaleHello01.wav", "DIALOG")
        end

        if xyz2 == 2 then
            PlaySoundFile("Sound/Character/Dwarf/DwarfVocalMale/DwarfMaleHello02.wav", "DIALOG")
        end

        if xyz2 == 3 then
            PlaySoundFile("Sound/Character/Dwarf/DwarfVocalMale/DwarfMaleHello03.wav", "DIALOG")
        end

        if xyz2 == 4 then
            PlaySoundFile("Sound/Character/Dwarf/DwarfVocalMale/DwarfMaleHello04.wav", "DIALOG")
        end
    end

    if xyz >= 45 and faction == 1 then
        local xyz2 = math.random(1, 6)
        

        if xyz2 == 1 then
            PlaySoundFile("Sound/Creature/GoblinMaleGruffNPC/GoblinMaleGruffNPCGreeting01.wav", "DIALOG")
        end

        if xyz2 == 2 then
            PlaySoundFile("Sound/Creature/GoblinMaleGruffNPC/GoblinMaleGruffNPCGreeting02.wav", "DIALOG")
        end

        if xyz2 == 3 then
            PlaySoundFile("Sound/Creature/GoblinMaleGruffNPC/GoblinMaleGruffNPCGreeting03.wav", "DIALOG")
        end

        if xyz2 == 4 then
            PlaySoundFile("Sound/Creature/GoblinMaleGruffNPC/GoblinMaleGruffNPCGreeting04.wav", "DIALOG")
        end

        if xyz2 == 5 then
            PlaySoundFile("Sound/Creature/GoblinMaleGruffNPC/GoblinMaleGruffNPCGreeting05.wav", "DIALOG")
        end

        if xyz2 == 6 then
            PlaySoundFile("Sound/Creature/GoblinMaleGruffNPC/GoblinMaleGruffNPCGreeting06.wav", "DIALOG")
        end
    end

 end
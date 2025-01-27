local AIO = AIO or require("AIO")

if AIO.AddAddon() then
    return
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

local ScaleHandlers = AIO.AddHandlers("AIO_Scale", {})
local newfont = "Fonts\\FRIZQT__.TTF"

ScaleParentFrame = CreateFrame("Frame", "ScaleParentFrame", UIParent)
local ScaleFrame = ScaleParentFrame

ScaleFrame:SetPoint("CENTER")
local scaleMulti = 0.85

ScaleFrame:SetSize(450*scaleMulti, 250*scaleMulti)

ScaleFrame:SetToplevel(true)
ScaleFrame:SetClampedToScreen(true)

ScaleFrame:SetMovable(true)
ScaleFrame:EnableMouse(true)
ScaleFrame:SetScript("OnDragStart", ScaleFrame.StartMoving)
ScaleFrame:SetScript("OnHide", ScaleFrame.StopMovingOrSizing)
ScaleFrame:SetScript("OnDragStop", ScaleFrame.StopMovingOrSizing)

ScaleFrame.Background = ScaleFrame:CreateTexture(nil, "BACKGROUND")
ScaleFrame.Background:SetSize(ScaleFrame:GetSize())
ScaleFrame.Background:SetPoint("CENTER", ScaleFrame, "CENTER", 0, 0)
ScaleFrame.Background:SetTexture("Interface/Doomhammer/ScaleFrame")
ScaleFrame.Background:SetTexCoord(CoordCalc(1024, 0, 0, 460, 262))

ScaleFrame.CloseButton = CreateFrame("Button", nil, ScaleFrame, "UIPanelCloseButton")
ScaleFrame.CloseButton:SetSize(30, 30)
ScaleFrame.CloseButton:SetPoint("TOPRIGHT", ScaleFrame, "TOPRIGHT", 0, 0)
ScaleFrame.CloseButton:EnableMouse(true)
ScaleFrame.CloseButton:SetScript(
	"OnClick", function()
	PlaySound("INTERFACESOUND_CHARWINDOWCLOSE", "SFX")
	HideUIPanel(ScaleFrame)
	ScaleHandlers.HideFrame()
	end)

local scaleTitle = ScaleFrame:CreateFontString("scaleTitle")
scaleTitle:SetFont(newfont, 36, "OUTLINE")
scaleTitle:SetSize(100, 20)
scaleTitle:SetPoint("TOP", 0, -40)
scaleTitle:SetText("Scale")

local ScaleSlider = CreateFrame("Slider", "ScaleSlider", ScaleFrame, "OptionsSliderTemplate")
ScaleSlider:SetWidth(200)
ScaleSlider:SetHeight(35)
ScaleSlider:SetOrientation("HORIZONTAL")
ScaleSlider:SetPoint("CENTER", ScaleFrame, 0, 0)
ScaleSlider:SetValueStep(.025)
ScaleSlider:SetMinMaxValues(0.9, 1.15)
ScaleSlider:SetValue(1)
ScaleSlider:SetToplevel(true)

local submitButton = CreateFrame("Button", "submitButton", ScaleFrame)
submitButton:SetSize(150, 50)
submitButton:SetPoint("BOTTOM", ScaleFrame, 0, 25)
submitButton:SetNormalTexture("Interface/Doomhammer/ScaleFrame")
submitButton:GetNormalTexture():SetTexCoord(CoordCalc(1024, 74, 305, 403, 129))
submitButton:SetHighlightTexture("Interface/Doomhammer/ScaleFrame")
submitButton:GetHighlightTexture():SetTexCoord(CoordCalc(1024, 74, 305, 403, 129))
submitButton:SetPushedTexture("Interface/Doomhammer/ScaleFrame")
submitButton:GetPushedTexture():SetTexCoord(CoordCalc(1024, 74, 565, 403, 130))

local submitbutton_text = submitButton:CreateFontString("submitbutton_text")
submitbutton_text:SetFont(newfont, 14)
submitbutton_text:SetSize(100, 10)
submitbutton_text:SetPoint("CENTER", 0, 0)
submitbutton_text:SetText("1")



ScaleSlider:SetScript("OnValueChanged", function(self,value,userInput)
	if userInput then 

	else
		submitbutton_text:SetText(value)
		
	end
end)

submitButton:SetScript("OnClick", function (self, button, down)
	AIO.Handle("AIO_Scale", "Scale", ScaleSlider:GetValue())
	submitButton:Hide()
	AIO.Handle("AIO_Scale", "CooldownStart")
end)



function ScaleHandlers.ShowFrame(player)
    ScaleFrame:Show()
end

function ScaleHandlers.ShowButton(player)
	submitButton:Show()
end

ScaleFrame:Hide()

local AIO = AIO or require("AIO")

local ScaleHandlers = AIO.AddHandlers("AIO_Scale", {})

local resizer = 58130

function ScaleHandlers.Scale(player, value)

player:CastSpell(player, 28136, true)
player:PlayDistanceSound(gruntSound)
player:PerformEmote(432)
player:SetScale(value)


end

local function ResizerFunc(event, player, item, target)

gruntSound = 0

if player:GetRace() == 1 then

	if player:GetGender() == 0 then
	gruntSound = 1259
	end
	
	if player:GetGender() == 1 then
	gruntSound = 195
	end
end

if player:GetRace() == 2 then

	if player:GetGender() == 0 then
	gruntSound = 1320
	end
	
if player:GetGender() == 1 then
	gruntSound = 211
	end
end

if player:GetRace() == 3 then

	if player:GetGender() == 0 then
	gruntSound = 2930
	end
	
if player:GetGender() == 1 then
	gruntSound = 2926
	end
end

if player:GetRace() == 4 then

	if player:GetGender() == 0 then
	gruntSound = 1308
	end
	
if player:GetGender() == 1 then
	gruntSound = 1358
	end
end

if player:GetRace() == 5 then

	if player:GetGender() == 0 then
	gruntSound = 1316
	end
	
if player:GetGender() == 1 then
	gruntSound = 1362
	end
end

if player:GetRace() == 6 then

	if player:GetGender() == 0 then
	gruntSound = 1354
	end
	
if player:GetGender() == 1 then
	gruntSound = 227
	end
end

if player:GetRace() == 7 then

	if player:GetGender() == 0 then
	gruntSound = 3276
	end
	
if player:GetGender() == 1 then
	gruntSound = 3270
	end
end

if player:GetRace() == 8 then

	if player:GetGender() == 0 then
	gruntSound = 12006
	end
	
if player:GetGender() == 1 then
	gruntSound = 3302
	end
end

if player:GetRace() == 10 then

	if player:GetGender() == 0 then
	gruntSound = 8997
	end
	
if player:GetGender() == 1 then
	gruntSound = 8993
	end
end

if player:GetRace() == 11 then

	if player:GetGender() == 0 then
	gruntSound = 8985
	end
	
if player:GetGender() == 1 then
	gruntSound = 8989
	end
end




	AIO.Handle(player, "AIO_Scale", "ShowFrame")
end

local function ScaleCooldown(event, delay, repeats, player)
	
	AIO.Handle(player, "AIO_Scale", "ShowButton")
end


function ScaleHandlers.CooldownStart(player)
	player:RegisterEvent(ScaleCooldown, 5000, 1)
end




RegisterItemEvent(resizer, 2, ResizerFunc)
local ghostitem = 58131

local function GhostVisual(event, player, item, target)
	
	if player:IsAlive() and player:HasAura(22650) then

		player:RemoveAura(22650, player)
	elseif player:IsAlive() and not player:HasAura(22650) then

		player:AddAura(22650, player)
	end

end

RegisterItemEvent(ghostitem, 2, GhostVisual)
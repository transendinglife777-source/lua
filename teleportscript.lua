local Players = game:GetService("Players") -- gets players
local TeleportService = game:GetService("TeleportService") -- gets teleportservice
local part = script.Parent -- gets part

part.Touched:Connect(function(hit) -- if the part is touched 
	local player = Players:GetPlayerFromCharacter(hit.Parent) -- gets player from character
	if player then -- if it's a player
		TeleportService:Teleport(133959326363946, player) -- teleports them
	end
end)

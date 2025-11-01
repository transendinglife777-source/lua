local Players = game:GetService("Players") -- gets player

Players.PlayerAdded:Connect(function(player) -- player added
	if player.AccountAge <= 30 then -- if account age is under 30
		print(player.Name .. " was kicked for being too young") -- kicks
		player:Kick("too young bye bye") -- kicks
	end
end)

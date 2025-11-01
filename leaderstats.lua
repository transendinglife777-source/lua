local Players = game:GetService("Players") -- gets player service

Players.PlayerAdded:Connect(function(player) -- when player is added 
	local leaderstats = Instance.new("Folder") -- create folder
	leaderstats.Name = "leaderstats" -- name it leaderstats 
	leaderstats.Parent = player -- parent it to player 

	local kills = Instance.new("IntValue") -- make a new intvalue
	kills.Name = "Kills" -- name it kills
	kills.Value = 0 -- set it's value to 0 
	kills.Parent = leaderstats -- parent it to leaderstats 
end)

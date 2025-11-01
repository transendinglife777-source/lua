local spider = script.Parent -- gets spider model
local waypoints = workspace.Waypoints -- gets waypoints from workspace

for waypoint=1, #waypoints:GetChildren() do -- loops through waypoints 
	spider.Humanoid:MoveTo(waypoints[waypoint].Position) -- moves the spider to waypoints position
	spider.Humanoid.MoveToFinished:Wait() -- move to finish and wait.
end

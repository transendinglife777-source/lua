local player = game.Players.LocalPlayer -- gets local player
local white = script.Parent:WaitForChild("white") -- waits for white
local black = script.Parent:WaitForChild("black") -- waits for black
local sound = game.SoundService:WaitForChild("IDIOT") -- waits for idiot sound

sound.Looped = true -- sound is loop
sound:Play() -- sound plays

local duration = 10 -- duration 
local startTime = tick() -- timer

while tick() - startTime < duration do -- while it's counting down, if it's start time is less than duration then
	white.Visible = true -- white is visible
	black.Visible = false -- black is invisible
	task.wait(1) -- waits 1

	white.Visible = false -- white is invisible
	black.Visible = true -- black is visible
	task.wait(1) -- waits 1 second 
end

white.Visible = false -- sets white as invisible
black.Visible = true -- sets black as visible

-- Stop the sound
sound:Stop() -- sets sound to stop
sound.Looped = false -- stops the loop

if script.Parent:IsA("ScreenGui") then -- if script.parent is a screengui then
	script.Parent:Destroy() -- destroy it
elseif script.Parent.Parent:IsA("PlayerGui") then -- if it's a playergui then
	script.Parent:Destroy() -- destroy it
end

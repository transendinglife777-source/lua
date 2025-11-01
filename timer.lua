-- // Timer // --
local Timer = script.Parent -- gets time 

local countdown = {10, 5, 3, 2, 1} -- countdown table 

for _, time in ipairs(countdown) do -- loops through countdown table 
	Timer.Text = "Game will start in " .. time .. (time == 1 and " second." or " seconds.") -- prints the text

	if time == 10 then -- if the time (seconds) is equal to then then
		task.wait(5) -- wait 5
	elseif time == 5 then -- if it's 5 seconds
		task.wait(2) --- wait 2 
	else 
		task.wait(1) -- wait 1 
	end
end

Timer.Text = "Game Starting.." -- game starting
print("game starting") -- print game starting

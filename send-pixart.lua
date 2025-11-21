function postToURL()
	local j, block = turtle.inspectDown()
	http.post("https://cedar.fogcloud.org/api/logs/885B", block.name)
end

turtle.refuel(64)

for i = 1, 8 do
	postToURL()
	for i = 1, 14 do
		turtle.forward()
		postToURL()
	end
	turtle.turnRight()
	turtle.forward()
	turtle.turnRight()
	postToURL()
	for i = 1, 14 do
		turtle.forward()
		postToURL()
	end
	turtle.turnLeft()
	turtle.forward()
	turtle.turnLeft()
	postToURL()
end

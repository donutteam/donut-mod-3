--[[
	LevelUtil Class
	This class contains utility functions for use by Level Load and Initialization scripts.
]]

LevelUtil = {}

local NoParkCars = {
	"dtstruck","glastruc","cMilk","nuctruck","schoolbu","votkenby","votetruc",
	"ambul","pizza",
	"fishtruc",
	"garbage",
}


function LevelUtil.LoadTraffic(PossibleTrafficCars,MaximumInstances)
	print("Loading Randomized Traffic Group.")
	
	local PossibleTrafficCars2 = {}
	for k,PossibleTrafficCar in pairs(PossibleTrafficCars) do
		table.insert(PossibleTrafficCars2,PossibleTrafficCar)
	end
	
	RandomTrafficCars = {}
	local i = 0
	while i < 5 do
		local RandomTrafficCarIndex = math.random(#PossibleTrafficCars2)
		local RandomTrafficCar = PossibleTrafficCars2[RandomTrafficCarIndex]
		local Instances = RandomTrafficCars[RandomTrafficCar]
		if Instances == nil then
			Instances = 0
		end
		Instances = Instances+1
		RandomTrafficCars[RandomTrafficCar] = Instances
		if MaximumInstances ~= nil and Instances >= MaximumInstances then
			table.remove(PossibleTrafficCars2,RandomTrafficCarIndex)
		end
		i = i+1
	end
	
	for Car,Amount in pairs(RandomTrafficCars) do
		Game.LoadP3DFile(Car)
		print("Loaded Traffic Car: " .. Car)
	end
	
	print("Done Loading Randomized Traffic Group.")
end

function LevelUtil.CreateTrafficGroups()
	print("Processing Randomized Traffic Group.")

	Game.CreateTrafficGroup(0)
	
	for Car, Amount in pairs(RandomTrafficCars) do
		local CarName = RemoveFileExtension(GetFileName(Car))
		Game.AddTrafficModel(CarName, Amount, table.contains(NoParkCars, CarName) and 1 or 0)
		print("Initialized Traffic Car: " .. CarName)
	end
	
	Game.CloseTrafficGroup()
	
	print("Done Initializing Randomized Traffic Group.")
end

function LevelUtil.CreatePedGroups(PedGroups)
	print("Processing Randomized Ped Groups.")
	if Settings.LucasMode then
		for i = 1, #PedGroups, 1 do
			Game.CreatePedGroup(i - 1)
				Game.AddPed("goofball", 7)
			Game.ClosePedGroup()
		end
	else
		print("Processing Randomized Ped Groups.")
		for i, PedGroup in pairs(PedGroups) do
			print("Processing Group " .. tostring(i) .. ".")
			Game.CreatePedGroup(i-1)
				local RandomPeds = {}
				
				for i = 1, 7 do
					local RandomPed = PedGroup[math.random(#PedGroup)]
					if RandomPeds[RandomPed] ~= nil then
						RandomPeds[RandomPed] = RandomPeds[RandomPed]+1
					else
						RandomPeds[RandomPed] = 1
					end
				end
				
				for Ped, Amount in pairs(RandomPeds) do
					Game.AddPed(Ped, Amount)
					print("Added " .. tostring(Amount) .. " of " .. Ped .. " to Group " .. tostring(i) .. ".")
				end
			Game.ClosePedGroup()
			print("Done Group " .. tostring(i) .. ".")
		end
		print("Done Randomized Ped Groups.")
	end
end
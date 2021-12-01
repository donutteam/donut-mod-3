-- Add Missions and Bonus Missions
for k, Mission in pairs({"m1","m2","m3","m4","m5","m6","m7","m8"}) do Game.AddMission(Mission) end
for k, BonusMission in pairs({"sr1","sr2","sr3","gr1","bm1"}) do Game.AddBonusMission(BonusMission) end

-- Load P3D Files
Game.LoadP3DFile("art\\cars\\cPolice.p3d")
Game.LoadP3DFile("art\\chars\\bart_kickwave.p3d")
Game.LoadP3DFile("art\\chars\\bart_electrocuted.p3d")
Game.LoadP3DFile("art\\missions\\level02\\l2_doors.p3d")
Game.LoadP3DFile("art\\missions\\level02\\jumps.p3d")
Game.LoadP3DFile("art\\missions\\level02\\wasps.p3d")
Game.LoadP3DFile("art\\missions\\generic\\moe_door.p3d")
Game.LoadP3DFile("art\\l02_fx.p3d","GMA_LEVEL_OTHER")
Game.LoadP3DFile("art\\missions\\generic\\moe_door.p3d")

Game.LoadP3DFile("art\\coins\\buzzcolacoin.p3d")
Game.LoadP3DFile("art\\locators\\l2.p3d")
	
-- Mission Files
Game.LoadP3DFile("art\\stateprops\\fireworks.p3d")

-- Load Traffic P3D Files (these are randomized, so they use their own function)
LevelUtil.LoadTraffic({
	"art\\cars\\ambul.p3d",
	"art\\cars\\compactA.p3d",
	"art\\cars\\" .. (math.random(1,100) == 1 and "dtstruck" or "glastruc") .. ".p3d",
	"art\\cars\\minivanA.p3d",
	"art\\cars\\pizza.p3d",
	"art\\cars\\sedanA.p3d",
	"art\\cars\\sportsA.p3d",
	"art\\cars\\wagonA.p3d",
},1)

-- Load Default Car
Game.LoadDisposableCar("art\\cars\\" .. Rewards[2].Cars[1] .. ".p3d", Rewards[2].Cars[1], "DEFAULT")

-- Add Gags
dofile(Paths.Resources .. "/scripts/levels/level02/levell.gags.interact.lua")
dofile(Paths.Resources .. "/scripts/levels/level02/levell.gags.touch.lua")

-- Suppress Drivers
for k, Driver in pairs({"bart","wiggum","snake","skinner","moe","beeman","otto","cbg","frink","cletus","apu","lisa","homer"}) do
	Game.SuppressDriver(Driver)
end

if IsModEnabled("ReplayableBonusMissions") then
	Game.SuppressDriver("grandpa")
end
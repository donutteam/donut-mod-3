-- Add Missions and Bonus Missions
for k, Mission in pairs({"m1","m2","m3","m4","m5","m6","m7","m8"}) do Game.AddMission(Mission) end
for k, BonusMission in pairs({"sr1","sr2","sr3","gr1","bm1","ismovie"}) do Game.AddBonusMission(BonusMission) end

-- Load P3D Files
Game.LoadP3DFile("art\\chars\\lisa_kickwave.p3d")
Game.LoadP3DFile("art\\chars\\lisa_electrocuted.p3d")
Game.LoadP3DFile("art\\missions\\level03\\l3_doors.p3d")
Game.LoadP3DFile("art\\missions\\level03\\jumps.p3d")
Game.LoadP3DFile("art\\missions\\level03\\level.p3d")
Game.LoadP3DFile("art\\missions\\level03\\wasps.p3d")
Game.LoadP3DFile("art\\missions\\generic\\ad_door.p3d")
Game.LoadP3DFile("art\\missions\\generic\\obs_door.p3d")
Game.LoadP3DFile("art\\l03_fx.p3d","GMA_LEVEL_OTHER")

Game.LoadP3DFile("art\\coins\\buzzcolacoin.p3d")
Game.LoadP3DFile("art\\locators\\l3.p3d")
	
Game.LoadP3DFile("art\\cars\\cPolice.p3d")

-- Load Traffic P3D Files (these are randomized, so they use their own function)
LevelUtil.LoadTraffic({
	"art\\cars\\compactA.p3d",
	"art\\cars\\fishtruc.p3d",
	"art\\cars\\" .. (math.random(1,100) == 1 and "dtstruck" or "glastruc") .. ".p3d",
	"art\\cars\\pickupA.p3d",
	"art\\cars\\sportsA.p3d",
},1)

Game.LoadDisposableCar("art\\cars\\" .. Rewards[3].Cars[1] .. ".p3d", Rewards[3].Cars[1], "DEFAULT")

-- Load Gags
Game.ClearGagBindings() 						
dofile(Paths.Resources .. "/scripts/levels/level03/levell.gags.interact.lua")		-- Interactive Gags (Interactive, the ones that count)
dofile(Paths.Resources .. "/scripts/levels/level03/levell.gags.touch.lua")			-- Touch Gags (Background)

-- Suppress Drivers
for k, Driver in pairs({"lisa","bart","apu","cletus","frink","grandpa","wiggum","otto","cbg","smithers","marge","male2"}) do
	Game.SuppressDriver(Driver)
end

if IsModEnabled("ReplayableBonusMissions") then
	Game.SuppressDriver("skinner")
end
-- Add Missions and Bonus Missions
for k, Mission in pairs({"m0","m1","m2","m3","m4","m5","m6","m7"}) do Game.AddMission(Mission) end
for k, BonusMission in pairs({"sr1","sr2","sr3","gr1","bm1"}) do Game.AddBonusMission(BonusMission) end

-- Load P3D Files
Game.LoadP3DFile("art\\cars\\cPolice.p3d")
Game.LoadP3DFile("art\\chars\\homer_kickwave.p3d")
Game.LoadP3DFile("art\\chars\\homer_electrocuted.p3d")
Game.LoadP3DFile("art\\missions\\level01\\l1_doors.p3d")
Game.LoadP3DFile("art\\missions\\level01\\jumps.p3d")
--Game.LoadP3DFile("art\\missions\\level01\\level.p3d")
Game.LoadP3DFile("art\\missions\\level01\\wasps.p3d")
Game.LoadP3DFile("art\\missions\\generic\\sim_door.p3d")
Game.LoadP3DFile("art\\l01_fx.p3d","GMA_LEVEL_OTHER")

Game.LoadP3DFile("art\\coins\\buzzcolacoin.p3d")
Game.LoadP3DFile("art\\locators\\l1.p3d")
Game.LoadP3DFile("art\\stateprops\\nuclear_waste.p3d")

-- Load Traffic P3D Files (these are randomized, so they use their own function)
LevelUtil.LoadTraffic({
	"art\\cars\\compactA.p3d",
	"art\\cars\\" .. (math.random(1,100) == 1 and "dtstruck" or "glastruc") .. ".p3d",
	"art\\cars\\cMilk.p3d",
	"art\\cars\\minivanA.p3d",
	"art\\cars\\sedanA.p3d",
	"art\\cars\\" .. (math.random(1,100) == 1 and "votkenby" or "votetruc") .. ".p3d",
	"art\\cars\\wagonA.p3d",
}, 1)

-- Load Player Car
Game.LoadDisposableCar("art\\cars\\" .. Rewards[1].Cars[1] .. ".p3d", Rewards[1].Cars[1], "DEFAULT")

-- Create Gags
Game.ClearGagBindings() 						
dofile(Paths.Resources .. "/scripts/levels/level01/levell.gags.interact.lua")	-- Interactive Gags (Interactive, the ones that count)
dofile(Paths.Resources .. "/scripts/levels/level01/levell.gags.touch.lua")		-- Touch Gags (Background)

-- Suppress Drivers
for k, Driver in pairs({"homer","marge","apu","lisa","smithers","skinner","grandpa","bart","ned","frink"}) do
	Game.SuppressDriver(Driver)
end

if IsModEnabled("ReplayableBonusMissions") then
	Game.SuppressDriver("cletus")
end
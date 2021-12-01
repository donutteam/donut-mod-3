-- Setup Wasps
Game.PreallocateActors("beecamera","3")

if Difficulty.IsNormal then
	Game.SetProjectileStats("waspray","80.0","5")
	Game.SetActorRotationSpeed("beecamera","40.0")
	Game.AddBehaviour("beecamera","ATTRACTION","5.0","10","7.0")			-- "MIN_DISTANCE","MAX_DISTANCE","SPEED"
	Game.AddBehaviour("beecamera","ATTACK_PLAYER","10.0","4.0","3.0")		-- "MAX_RANGE","FIRING_ARC","TIME"
	Game.AddBehaviour("beecamera","EVADE_PLAYER","1.0","2.0","1.0","2.0","10")	-- "MIN_DISTANCE","MAX_DISTANCE","MIN_HEIGHT","MAX_HEIGHT","SPEED"
else
	Game.SetProjectileStats("waspray","90.0","10")
	Game.SetActorRotationSpeed("beecamera","160.0")
	Game.AddBehaviour("beecamera","ATTRACTION","2.0","10","10.0")				-- "MIN_DISTANCE","MAX_DISTANCE","SPEED"
	Game.AddBehaviour("beecamera","ATTACK_PLAYER","15.0","3.0","1.0")			-- "MAX_RANGE","FIRING_ARC","TIME"
	Game.AddBehaviour("beecamera","EVADE_PLAYER","1.0","3.5","1.0","2.0","30")	-- "MIN_DISTANCE","MAX_DISTANCE","MIN_HEIGHT","MAX_HEIGHT","SPEED"
	Game.AddShield("beecamera","beeshield")
end

-- Add Wasps
Game.AddSpawnPointByLocatorScript("w_comicroof","beecamera","Shelley","w_comicroof","10.0","120")
Game.AddSpawnPointByLocatorScript("w_bowl","beecamera","Shelley","w_bowl","10.0","30")
Game.AddSpawnPointByLocatorScript("w_lighthouse","beecamera","Shelley","w_lighthouse","10.0","30")
Game.AddSpawnPointByLocatorScript("w_shipcrane","beecamera","Shelley","w_shipcrane","10.0","50")
Game.AddSpawnPointByLocatorScript("w_dockcrane","beecamera","Shelley","w_dockcrane","20.0","30")
Game.AddSpawnPointByLocatorScript("w_duff2","beecamera","Shelley","w_duff2","20.0","50")
Game.AddSpawnPointByLocatorScript("w_kstage1","beecamera","Shelley","w_kstage1","10.0","30")
Game.AddSpawnPointByLocatorScript("w_kstage2","beecamera","Shelley","w_kstage2","10.0","30")
Game.AddSpawnPointByLocatorScript("w_night","beecamera","Shelley","w_night","10.0","30")
Game.AddSpawnPointByLocatorScript("w_culvert","beecamera","Shelley","w_culvert","10.0","40")
Game.AddSpawnPointByLocatorScript("w_offramp","beecamera","Shelley","w_offramp","10.0","30")
Game.AddSpawnPointByLocatorScript("w_dam1","beecamera","Shelley","w_dam1","10.0","50")
Game.AddSpawnPointByLocatorScript("w_hype","beecamera","Shelley","w_hype","20.0","30")
Game.AddSpawnPointByLocatorScript("w_shipstairs","beecamera","Shelley","w_shipstairs","30.0","30")
Game.AddSpawnPointByLocatorScript("w_duff1","beecamera","Shelley","w_duff1","25.0","50")
Game.AddSpawnPointByLocatorScript("w_duff3","beecamera","Shelley","w_duff3","25.0","50")
Game.AddSpawnPointByLocatorScript("w_dam2","beecamera","Shelley","w_dam2","10.0","50")
Game.AddSpawnPointByLocatorScript("w_observatory","beecamera","Shelley","w_observatory","10.0","40")
Game.AddSpawnPointByLocatorScript("w_kamp1","beecamera","Shelley","w_kamp1","20.0","40")
Game.AddSpawnPointByLocatorScript("w_kamp2","beecamera","Shelley","w_kamp2","20.0","40")

if not Settings.DisableNewWasps then
	Game.AddSpawnPointByLocatorScript("w2_parkdungeon","beecamera","Shelley","w2_parkdungeon","10.0","120")
	Game.AddSpawnPointByLocatorScript("w2_otto","beecamera","Shelley","w2_otto","10.0","30")
	Game.AddSpawnPointByLocatorScript("w2_split","beecamera","Shelley","w2_split","10.0","30")
	Game.AddSpawnPointByLocatorScript("w2_boatst","beecamera","Shelley","w2_boatst","10.0","50")
	Game.AddSpawnPointByLocatorScript("w2_squidport","beecamera","Shelley","w2_squidport","20.0","30")
	Game.AddSpawnPointByLocatorScript("w2_n2spblo","beecamera","Shelley","w2_n2spblo","20.0","50")
	Game.AddSpawnPointByLocatorScript("w2_jump","beecamera","Shelley","w2_jump","10.0","30")
	Game.AddSpawnPointByLocatorScript("w2_redhaus","beecamera","Shelley","w2_redhaus","10.0","30")
	Game.AddSpawnPointByLocatorScript("w2_bowling","beecamera","Shelley","w2_bowling","10.0","30")
	Game.AddSpawnPointByLocatorScript("w2_greenhaus","beecamera","Shelley","w2_greenhaus","10.0","40")
	Game.AddSpawnPointByLocatorScript("w2_stairs","beecamera","Shelley","w2_stairs","10.0","30")
	Game.AddSpawnPointByLocatorScript("w2_limehaus","beecamera","Shelley","w2_limehaus","10.0","50")
	Game.AddSpawnPointByLocatorScript("w2_brew1","beecamera","Shelley","w2_brew1","20.0","30")
	Game.AddSpawnPointByLocatorScript("w2_brew2","beecamera","Shelley","w2_brew2","30.0","30")
	Game.AddSpawnPointByLocatorScript("w2_taffy","beecamera","Shelley","w2_taffy","25.0","50")
	Game.AddSpawnPointByLocatorScript("w2_globe","beecamera","Shelley","w2_globe","25.0","50")
	Game.AddSpawnPointByLocatorScript("w2_tunnel","beecamera","Shelley","w2_tunnel","10.0","50")
	Game.AddSpawnPointByLocatorScript("w2_hw1","beecamera","Shelley","w2_hw1","10.0","40")
	Game.AddSpawnPointByLocatorScript("w2_hw2","beecamera","Shelley","w2_hw2","20.0","40")
	Game.AddSpawnPointByLocatorScript("w2_hw3","beecamera","Shelley","w2_hw3","20.0","40")
end
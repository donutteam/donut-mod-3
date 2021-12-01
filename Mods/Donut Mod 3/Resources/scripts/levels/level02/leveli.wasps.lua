-- Setup Wasps
Game.PreallocateActors("beecamera","3")

if Difficulty.IsNormal then
	Game.SetProjectileStats("waspray","70.0","5")
	Game.SetActorRotationSpeed("beecamera","85.0")
	Game.AddBehaviour("beecamera","ATTRACTION","2.0","15","5.0")					-- "MIN_DISTANCE","MAX_DISTANCE","SPEED"
	Game.AddBehaviour("beecamera","ATTACK_PLAYER","15.0","2.5","4.0")			-- "MAX_RANGE","FIRING_ARC","TIME"
	Game.AddBehaviour("beecamera","EVADE_PLAYER","2.5","8.0","1.0","2.0","5")	-- "MIN_DISTANCE","MAX_DISTANCE","MIN_HEIGHT","MAX_HEIGHT","SPEED"
else
	Game.SetProjectileStats("waspray","90.0","10")
	Game.SetActorRotationSpeed("beecamera","160.0")
	Game.AddBehaviour("beecamera","ATTRACTION","2.0","10","10.0")				-- "MIN_DISTANCE","MAX_DISTANCE","SPEED"
	Game.AddBehaviour("beecamera","ATTACK_PLAYER","15.0","3.0","1.0")			-- "MAX_RANGE","FIRING_ARC","TIME"
	Game.AddBehaviour("beecamera","EVADE_PLAYER","1.0","3.5","1.0","2.0","30")	-- "MIN_DISTANCE","MAX_DISTANCE","MIN_HEIGHT","MAX_HEIGHT","SPEED"
	Game.AddShield("beecamera","beeshield")
end

-- Add Wasps
Game.AddSpawnPointByLocatorScript("w_hospital","beecamera","Shelley","w_hospital","15.0","-1")
Game.AddSpawnPointByLocatorScript("w_museum","beecamera","Shelley","w_museum","8.0","-1")
Game.AddSpawnPointByLocatorScript("w_krusty1","beecamera","Shelley","w_krusty1","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_carwash","beecamera","Shelley","w_carwash","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_railstair","beecamera","Shelley","w_railstair","15.0","-1")
Game.AddSpawnPointByLocatorScript("w_rail2","beecamera","Shelley","w_rail2","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_mono1","beecamera","Shelley","w_mono1","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_popcycle","beecamera","Shelley","w_popcycle","8.0","-1")
Game.AddSpawnPointByLocatorScript("w_fountain","beecamera","Shelley","w_fountain","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_townhall","beecamera","Shelley","w_townhall","20.0","-1")
Game.AddSpawnPointByLocatorScript("w_gazebo","beecamera","Shelley","w_gazebo","15.0","-1")
Game.AddSpawnPointByLocatorScript("w_roof","beecamera","Shelley","w_roof","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_legitroof","beecamera","Shelley","w_legitroof","15.0","60")
Game.AddSpawnPointByLocatorScript("w_legitroof2","beecamera","Shelley","w_legitroof2","15.0","60")
Game.AddSpawnPointByLocatorScript("w_moesroof","beecamera","Shelley","w_moesroof","15.0","-1")
Game.AddSpawnPointByLocatorScript("w_rail1","beecamera","Shelley","w_rail1","12.0","-1")
Game.AddSpawnPointByLocatorScript("w_roundroom","beecamera","Shelley","w_roundroom","8.0","-1")
Game.AddSpawnPointByLocatorScript("w_police","beecamera","Shelley","w_police","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_mono2","beecamera","Shelley","w_mono2","10.0","-1")
Game.AddSpawnPointByLocatorScript("w_mono3","beecamera","Shelley","w_mono3","10.0","-1")

if not Settings.DisableNewWasps then
	Game.AddSpawnPointByLocatorScript("w2_dmvbus","beecamera","Shelley","w2_dmvbus","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_trynsave","beecamera","Shelley","w2_trynsave","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_traincar","beecamera","Shelley","w2_traincar","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_windowrail","beecamera","Shelley","w2_windowrail","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_lardstairs","beecamera","Shelley","w2_lardstairs","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_monkeylot","beecamera","Shelley","w2_monkeylot","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_park","beecamera","Shelley","w2_park","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_trainplat","beecamera","Shelley","w2_trainplat","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_dirtramp","beecamera","Shelley","w2_dirtramp","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_duffthing","beecamera","Shelley","w2_duffthing","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_trainyard","beecamera","Shelley","w2_trainyard","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_legit","beecamera","Shelley","w2_legit","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_museumsign","beecamera","Shelley","w2_museumsign","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_firetruks","beecamera","Shelley","w2_firetruks","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_glasstube","beecamera","Shelley","w2_glasstube","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_police2","beecamera","Shelley","w2_police2","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_bank","beecamera","Shelley","w2_bank","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_stadium","beecamera","Shelley","w2_stadium","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_books","beecamera","Shelley","w2_books","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_cafe","beecamera","Shelley","w2_cafe","15.0","60")
end
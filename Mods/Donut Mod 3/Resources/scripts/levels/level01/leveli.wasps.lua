-- Setup Wasps
Game.PreallocateActors("beecamera","3")

if Difficulty.IsNormal then
	Game.SetProjectileStats("waspray","60.0","5")
	Game.SetActorRotationSpeed("beecamera","40.0")
	Game.AddBehaviour("beecamera","ATTRACTION","4.0","10","10.0")			-- "MIN_DISTANCE","MAX_DISTANCE","SPEED"
	Game.AddBehaviour("beecamera","ATTACK_PLAYER","10.0","5.0","10.0")		-- "MAX_RANGE","FIRING_ARC","TIME"
	Game.AddBehaviour("beecamera","EVADE_PLAYER","3.0","8","1.0","2.0","5")	-- "MIN_DISTANCE","MAX_DISTANCE","MIN_HEIGHT","MAX_HEIGHT","SPEED"
else
	Game.SetProjectileStats("waspray","90.0","10")
	Game.SetActorRotationSpeed("beecamera","160.0")
	Game.AddBehaviour("beecamera","ATTRACTION","2.0","10","10.0")				-- "MIN_DISTANCE","MAX_DISTANCE","SPEED"
	Game.AddBehaviour("beecamera","ATTACK_PLAYER","15.0","3.0","1.0")			-- "MAX_RANGE","FIRING_ARC","TIME"
	Game.AddBehaviour("beecamera","EVADE_PLAYER","1.0","3.5","1.0","2.0","30")	-- "MIN_DISTANCE","MAX_DISTANCE","MIN_HEIGHT","MAX_HEIGHT","SPEED"
	Game.AddShield("beecamera","beeshield")
end

-- Add Wasps
Game.AddSpawnPointByLocatorScript("w_lemon","beecamera","Shelley","w_lemon","15.0","60")
Game.AddSpawnPointByLocatorScript("w_schoolroof1","beecamera","Shelley","w_schoolroof1","15.0","60")
Game.AddSpawnPointByLocatorScript("w_bonuscar","beecamera","Shelley","w_bonuscar","50.0","60")
Game.AddSpawnPointByLocatorScript("w_stonetemple","beecamera","Shelley","w_stonetemple","60.0","60")
Game.AddSpawnPointByLocatorScript("w_trailor1","beecamera","Shelley","w_trailor1","50.0","60")
Game.AddSpawnPointByLocatorScript("w_trailor2","beecamera","Shelley","w_trailor2","50.0","60")
Game.AddSpawnPointByLocatorScript("w_cardguard","beecamera","Shelley","w_cardguard","60.0","60")
Game.AddSpawnPointByLocatorScript("w_bridge1","beecamera","Shelley","w_bridge1","30.0","60")
Game.AddSpawnPointByLocatorScript("w_bridge2","beecamera","Shelley","w_bridge2","30.0","60")
Game.AddSpawnPointByLocatorScript("w_barn","beecamera","Shelley","w_barn","20.0","60")
Game.AddSpawnPointByLocatorScript("w_simpsons","beecamera","Shelley","w_simpsons","10.0","60")
Game.AddSpawnPointByLocatorScript("w_flanders","beecamera","Shelley","w_flanders","10.0","60")
Game.AddSpawnPointByLocatorScript("w_wiggum","beecamera","Shelley","w_wiggum","8.0","60")
Game.AddSpawnPointByLocatorScript("w_kwickemart","beecamera","Shelley","w_kwickemart","10.0","60")
Game.AddSpawnPointByLocatorScript("w_lardlad","beecamera","Shelley","w_lardlad","8.0","60")
Game.AddSpawnPointByLocatorScript("w_gasroof","beecamera","Shelley","w_gasroof","15.0","60")
Game.AddSpawnPointByLocatorScript("w_schoolroof2","beecamera","Shelley","w_schoolroof2","15.0","60")
Game.AddSpawnPointByLocatorScript("w_playground","beecamera","Shelley","w_playground","15.0","60")
Game.AddSpawnPointByLocatorScript("w_schoolstairs","beecamera","Shelley","w_schoolstairs","15.0","60")
Game.AddSpawnPointByLocatorScript("w_tower","beecamera","Shelley","w_tower","15.0","60")

if not Settings.DisableNewWasps then
	Game.AddSpawnPointByLocatorScript("w2_bluehouse","beecamera","Shelley","w2_bluehouse","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_yellow","beecamera","Shelley","w2_yellow","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_retire","beecamera","Shelley","w2_retire","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_lardlads","beecamera","Shelley","w2_lardlads","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_redgate","beecamera","Shelley","w2_redgate","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_deli","beecamera","Shelley","w2_deli","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_communlot","beecamera","Shelley","w2_communlot","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_radio","beecamera","Shelley","w2_radio","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_richgas","beecamera","Shelley","w2_richgas","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_krusty","beecamera","Shelley","w2_krusty","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_checkers","beecamera","Shelley","w2_checkers","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_checkers2","beecamera","Shelley","w2_checkers2","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_toxictank","beecamera","Shelley","w2_toxictank","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_barnfield","beecamera","Shelley","w2_barnfield","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_shed","beecamera","Shelley","w2_shed","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_cletus","beecamera","Shelley","w2_cletus","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_bridge","beecamera","Shelley","w2_bridge","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_yellow2","beecamera","Shelley","w2_yellow2","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_redroof","beecamera","Shelley","w2_redroof","15.0","60")
	Game.AddSpawnPointByLocatorScript("w2_evergreen","beecamera","Shelley","w2_evergreen","15.0","60")
end
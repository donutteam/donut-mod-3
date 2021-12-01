-- Add Character and Car
Game.AddCharacter(Rewards[1].Skins[1], Rewards[1].Skins[1])
Game.InitLevelPlayerVehicle(Rewards[1].Cars[1], "level1_carstart", "DEFAULT")

-- Setup Hit & Run
Game.CreateChaseManager("cPolice", "hitnrun/" .. ({"l1","l1","l7"})[Difficulty.Current] .. ".con", 1)
Game.SetHitAndRunDecay(({0.8, 0.4, 0.0})[Difficulty.Current])
Game.SetNumChaseCars(({1, 2, 2})[Difficulty.Current])

-- Add NPCs
dofile(Paths.Resources .. "/scripts/levels/level01/leveli.npcs.lua")

-- Add Traffic
LevelUtil.CreateTrafficGroups()

-- Add Pedestrian Groups
LevelUtil.CreatePedGroups({
	{"male6","girl4","fem4","boy3"},	-- Z1, R1	Evergreen Terrace, Playground (By the Simpson's House)
	{"olady1","olady2","fem3","male3"},	-- Z2		Kwik-E-Mart, Lard Lads
	{"olady3","girl1","fem4"},			-- R2		Springfield Church
	{"boy2","boy3","girl2","girl3"},	-- Z3		Springfield Elementary
	{"fem4","busm1","busw1","busm2"},	-- R3, Z4	Rich Side, Burn's Mansion
	{"farmr1","rednk1","bum","hooker"},	-- R6, Z7	Tommaco Field, Trailer Park
	{"joger1","male5","fem2"},			-- R7		Springfield Cemetary
	{"nuclear"},						-- Z6		Interior of the Power Plant
})

-- Set Coin Drawable
Game.SetCoinDrawable("buzzcolacoin")

-- Set Particle Textures
Game.SetParticleTexture(0,"scratch2.bmp")	-- Sparkles
Game.SetParticleTexture(1,"spark4.bmp")		-- Sparks when Vehicles Collide
Game.SetParticleTexture(2,"cloud.tga")		-- Dust Cloud when Running/Jumping
Game.SetParticleTexture(3,"cloud.tga")		-- Leaves when hitting Shrubs/Trees
Game.SetParticleTexture(4,"star.tga")		-- Stars when hitting something static
Game.SetParticleTexture(5,"cloud.tga")	 	-- Paint Chips when Vehicle is Damaged
Game.SetParticleTexture(6,"halo.bmp")		-- Ring for Shock Wave Effects

-- Setup Wasps
dofile(Paths.Resources .. "/scripts/levels/level01/leveli.wasps.lua")
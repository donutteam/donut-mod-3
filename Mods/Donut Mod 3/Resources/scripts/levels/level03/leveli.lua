-- Add Character and Car
Game.AddCharacter(Rewards[3].Skins[1], Rewards[3].Skins[1])
Game.InitLevelPlayerVehicle(Rewards[3].Cars[1],"level3_carstart","DEFAULT")

-- Setup Hit & Run
Game.CreateChaseManager("cPolice","hitnrun/" .. ({"l3","l7","l7"})[Difficulty.Current] .. ".con",1)
Game.SetHitAndRunDecay(({0.8,0.4,0.0})[Difficulty.Current])
Game.SetNumChaseCars(({1,2,2})[Difficulty.Current])

-- Add NPCs
dofile(Paths.Resources .. "/scripts/levels/level03/leveli.npcs.lua")

-- Add Traffic
LevelUtil.CreateTrafficGroups()

-- Add Pedestrian Groups
LevelUtil.CreatePedGroups({
	{"girl3","fem1","boy3","male6"},		-- Z1	Android's Dungeon
	{"girl2","boy2","fem3","male2"},		-- R1	Road with Gas Station
	{"boy1","boy4","fem2","male5"},			-- Z2	Bowlorama
	{"olady2","sail2","hooker","male4"},	-- R2	Burn's Casino
	{"boy2","fem4","girl1","male6"},		-- Z3	Beach and Lighthouse
	{"sail1","sail3","sail4","bum"},		-- R3	C-Spanker
	{"sail4","fem2","boy2","const2"},		-- Z4	Krusty-Lu Studios
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
dofile(Paths.Resources .. "/scripts/levels/level03/leveli.wasps.lua")
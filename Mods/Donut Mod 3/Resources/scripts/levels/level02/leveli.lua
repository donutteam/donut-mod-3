-- Add Character and Car
Game.AddCharacter(Rewards[2].Skins[1], Rewards[2].Skins[1])
Game.InitLevelPlayerVehicle(Rewards[2].Cars[1],"level2_carstart","DEFAULT")

-- Setup Hit & Run
Game.CreateChaseManager("cPolice", "hitnrun/" .. ({"l2","l2","l7"})[Difficulty.Current] .. ".con", 1)
Game.SetHitAndRunDecay(({0.8,0.4,0.0})[Difficulty.Current])
Game.SetNumChaseCars(({1,2,2})[Difficulty.Current])

-- Add NPCs
dofile(Paths.Resources .. "/scripts/levels/level02/leveli.npcs.lua")

-- Add Traffic
LevelUtil.CreateTrafficGroups()

-- Add Pedestrian Groups
LevelUtil.CreatePedGroups({
	{"male6","fem3","fem4","girl4"},		-- Z1	Town Hall, Hospital
	{"const1","const2","male3","boy4"},		-- R1	Fire Station, Lard Lads (By Moes)
	{"sail1","mobstr","busm2","hooker"},	-- Z2	Moe's, Car Wash
	{"const1","bum","sail4","male3"},		-- R2	Train Yard
	{"busm1","busw1","male5","boy2"},		-- Z3	Try'N'Save, Herman's, DMV
	{"busm1","busw1","busm2","fem2"},		-- Z4	Sit'N'Rotate, Monorail Station, Police Station
	{"male1","busw1","fem1","joger1"},		-- R4	Stadium Tunnel
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
dofile(Paths.Resources .. "/scripts/levels/level02/leveli.wasps.lua")
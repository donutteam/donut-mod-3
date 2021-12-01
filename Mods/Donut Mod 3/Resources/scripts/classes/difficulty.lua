--[[
	Difficulty Class
	This class contains several constants used in Reward, Level, and Mission scripts.
]]

Difficulty = {}

Difficulty.Current = Settings.Difficulty

Difficulty.Normal = 1
Difficulty.Hellfish = 2
Difficulty.Deathfish = 3

Difficulty.IsNormal = Difficulty.Current == Difficulty.Normal
Difficulty.IsHellfish = Difficulty.Current == Difficulty.Hellfish
Difficulty.IsDeathfish = Difficulty.Current == Difficulty.Deathfish
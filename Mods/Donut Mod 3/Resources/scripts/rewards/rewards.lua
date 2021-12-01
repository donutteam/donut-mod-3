-- Load Pickup Stars
Game.LoadP3DFile("art\\pickups\\global0.p3d", "GMA_DEFAULT", "Global")

-- Bind Rewards Cars (see Resources/scripts/classes/rewards.lua for the Rewards table)
Game.BindReward(Rewards[1].Cars[1], "art\\cars\\" .. Rewards[1].Cars[1] .. ".p3d", "car", "defaultcar", 1)
Game.BindReward(Rewards[1].Cars[2], "art\\cars\\" .. Rewards[1].Cars[2] .. ".p3d", "car", "bonusmission", 1)
Game.BindReward(Rewards[1].Cars[3], "art\\cars\\" .. Rewards[1].Cars[3] .. ".p3d", "car", "streetrace", 1)
Game.BindReward(Rewards[1].Cars[4], "art\\cars\\" .. Rewards[1].Cars[4] .. ".p3d", "car", "forsale", 1, ({120, 150, 180})[Difficulty.Current], "simpson")
Game.BindReward(Rewards[1].Cars[5], "art\\cars\\" .. Rewards[1].Cars[5] .. ".p3d", "car", "forsale", 1, ({ 80, 100, 120})[Difficulty.Current], "gil")
Game.BindReward(Rewards[1].Cars[6], "art\\cars\\" .. Rewards[1].Cars[6] .. ".p3d", "car", "forsale", 1, ({100, 120, 140})[Difficulty.Current], "gil")
Game.BindReward(Rewards[1].Cars[7], "art\\cars\\" .. Rewards[1].Cars[7] .. ".p3d", "car", "forsale", 1, ({175, 210, 245})[Difficulty.Current], "gil")

Game.BindReward(Rewards[2].Cars[1], "art\\cars\\" .. Rewards[2].Cars[1] .. ".p3d", "car", "defaultcar", 2)
Game.BindReward(Rewards[2].Cars[2], "art\\cars\\" .. Rewards[2].Cars[2] .. ".p3d", "car", "bonusmission", 2)
Game.BindReward(Rewards[2].Cars[3], "art\\cars\\" .. Rewards[2].Cars[3] .. ".p3d", "car", "streetrace", 2)
Game.BindReward(Rewards[2].Cars[4], "art\\cars\\" .. Rewards[2].Cars[4] .. ".p3d", "car", "forsale", 2, ({175, 225, 275})[Difficulty.Current], "simpson")
Game.BindReward(Rewards[2].Cars[5], "art\\cars\\" .. Rewards[2].Cars[5] .. ".p3d", "car", "forsale", 2, ({170, 200, 230})[Difficulty.Current], "gil")
Game.BindReward(Rewards[2].Cars[6], "art\\cars\\" .. Rewards[2].Cars[6] .. ".p3d", "car", "forsale", 2, ({170, 200, 230})[Difficulty.Current], "gil")
Game.BindReward(Rewards[2].Cars[7], "art\\cars\\" .. Rewards[2].Cars[7] .. ".p3d", "car", "forsale", 2, ({190, 250, 310})[Difficulty.Current], "gil")

Game.BindReward(Rewards[3].Cars[1], "art\\cars\\" .. Rewards[3].Cars[1] .. ".p3d", "car", "defaultcar", 3)
Game.BindReward(Rewards[3].Cars[2], "art\\cars\\" .. Rewards[3].Cars[2] .. ".p3d", "car", "bonusmission", 3)
Game.BindReward(Rewards[3].Cars[3], "art\\cars\\" .. Rewards[3].Cars[3] .. ".p3d", "car", "streetrace", 3)
Game.BindReward(Rewards[3].Cars[4], "art\\cars\\" .. Rewards[3].Cars[4] .. ".p3d", "car", "forsale", 3, ({250, 300, 350})[Difficulty.Current], "simpson")
Game.BindReward(Rewards[3].Cars[5], "art\\cars\\" .. Rewards[3].Cars[5] .. ".p3d", "car", "forsale", 3, ({240, 280, 320})[Difficulty.Current], "gil")
Game.BindReward(Rewards[3].Cars[6], "art\\cars\\" .. Rewards[3].Cars[6] .. ".p3d", "car", "forsale", 3, ({250, 300, 350})[Difficulty.Current], "gil")
Game.BindReward(Rewards[3].Cars[7], "art\\cars\\" .. Rewards[3].Cars[7] .. ".p3d", "car", "forsale", 3, ({275, 350, 425})[Difficulty.Current], "gil")

--[[
Game.BindReward(Rewards[4].Cars[1], "art\\cars\\" .. Rewards[4].Cars[1] .. ".p3d", "car", "defaultcar", 4)
Game.BindReward(Rewards[4].Cars[2], "art\\cars\\" .. Rewards[4].Cars[2] .. ".p3d", "car", "bonusmission", 4)
Game.BindReward(Rewards[4].Cars[3], "art\\cars\\" .. Rewards[4].Cars[3] .. ".p3d", "car", "streetrace", 4)
Game.BindReward(Rewards[4].Cars[4], "art\\cars\\" .. Rewards[4].Cars[4] .. ".p3d", "car", "forsale", 4, ({375, 450, 525})[Difficulty.Current], "simpson")
Game.BindReward(Rewards[4].Cars[5], "art\\cars\\" .. Rewards[4].Cars[5] .. ".p3d", "car", "forsale", 4, ({350, 400, 450})[Difficulty.Current], "simpson")
Game.BindReward(Rewards[4].Cars[6], "art\\cars\\" .. Rewards[4].Cars[6] .. ".p3d", "car", "forsale", 4, ({350, 400, 450})[Difficulty.Current], "gil")
Game.BindReward(Rewards[4].Cars[7], "art\\cars\\" .. Rewards[4].Cars[7] .. ".p3d", "car", "forsale", 4, ({320, 345, 370})[Difficulty.Current], "gil")
]]

-- Set Rewards Car Attributes (speed, acceleration, toughness, handling)
Game.SetCarAttributes(Rewards[1].Cars[1], 1.0, 1.5, 2.5, 4.0)
Game.SetCarAttributes(Rewards[1].Cars[2], 1.0, 1.0, 3.5, 2.5)
Game.SetCarAttributes(Rewards[1].Cars[3], 2.0, 1.5, 1.5, 4.0)
Game.SetCarAttributes(Rewards[1].Cars[4], 1.5, 0.5, 5.0, 1.5)
Game.SetCarAttributes(Rewards[1].Cars[5], 0.5, 0.5, 4.0, 1.0)
Game.SetCarAttributes(Rewards[1].Cars[6], 1.0, 1.0, 4.5, 1.5)
Game.SetCarAttributes(Rewards[1].Cars[7], 5.0, 5.0, 0.5, 0.5)

Game.SetCarAttributes(Rewards[2].Cars[1], 1.5, 2.0, 1.5, 5.0)
Game.SetCarAttributes(Rewards[2].Cars[2], 1.5, 2.0, 2.0, 3.5)
Game.SetCarAttributes(Rewards[2].Cars[3], 2.0, 1.5, 2.5, 3.5)
Game.SetCarAttributes(Rewards[2].Cars[4], 2.0, 1.5, 3.5, 3.0)
Game.SetCarAttributes(Rewards[2].Cars[5], 1.5, 1.5, 3.5, 2.5)
Game.SetCarAttributes(Rewards[2].Cars[6], 3.0, 0.5, 5.0, 1.0)
Game.SetCarAttributes(Rewards[2].Cars[7], 1.5, 2.0, 3.0, 5.0)

Game.SetCarAttributes(Rewards[3].Cars[1], 2.5, 3.0, 1.5, 4.5)
Game.SetCarAttributes(Rewards[3].Cars[2], 2.0, 2.0, 2.5, 3.0)
Game.SetCarAttributes(Rewards[3].Cars[3], 5.0, 5.0, 1.0, 2.0)
Game.SetCarAttributes(Rewards[3].Cars[4], 2.0, 1.0, 5.0, 2.0)
Game.SetCarAttributes(Rewards[3].Cars[5], 1.5, 2.5, 2.5, 4.0)
Game.SetCarAttributes(Rewards[3].Cars[6], 2.0, 1.5, 3.5, 2.5)
Game.SetCarAttributes(Rewards[3].Cars[7], 2.5, 3.0, 1.5, 4.5)

--[[
Game.SetCarAttributes(Rewards[4].Cars[1], 2.5, 1.5, 4.0, 3.0)
Game.SetCarAttributes(Rewards[4].Cars[2], 2.5, 2.0, 3.0, 4.0)
Game.SetCarAttributes(Rewards[4].Cars[3], 2.5, 3.0, 2.5, 4.5)
Game.SetCarAttributes(Rewards[4].Cars[4], 3.0, 2.5, 3.5, 3.5)
Game.SetCarAttributes(Rewards[4].Cars[5], 3.0, 3.0, 1.5, 5.0)
Game.SetCarAttributes(Rewards[4].Cars[6], 2.5, 2.0, 4.0, 2.5)
Game.SetCarAttributes(Rewards[4].Cars[7], 0.0, 0.0, 0.0, 0.0) -- Temporary
]]

-- Bind Rewards Skins
Game.BindReward(Rewards[1].Skins[1], "art\\chars\\" .. string.sub(Rewards[1].Skins[1], 1, 6) .. "_m.p3d", "skin", "defaultskin", 1)
Game.BindReward(Rewards[1].Skins[2], "art\\chars\\" .. string.sub(Rewards[1].Skins[2], 1, 6) .. "_m.p3d", "skin", "forsale", 1, ({75, 100, 125})[Difficulty.Current], "interior")
Game.BindReward(Rewards[1].Skins[3], "art\\chars\\" .. string.sub(Rewards[1].Skins[3], 1, 6) .. "_m.p3d", "skin", "forsale", 1, ({80, 110, 140})[Difficulty.Current], "interior")
Game.BindReward(Rewards[1].Skins[4], "art\\chars\\" .. string.sub(Rewards[1].Skins[4], 1, 6) .. "_m.p3d", "skin", "forsale", 1, ({85, 120, 155})[Difficulty.Current], "interior")
-- Game.BindReward(Rewards[1].Skins[5], "art\\chars\\" .. string.sub(Rewards[1].Skins[5], 1, 6) .. "_m.p3d", "skin", "forsale", 1, 0, "interior")

Game.BindReward(Rewards[2].Skins[1], "art\\chars\\" .. string.sub(Rewards[2].Skins[1], 1, 6) .. "_m.p3d", "skin", "defaultskin", 2)
Game.BindReward(Rewards[2].Skins[2], "art\\chars\\" .. string.sub(Rewards[2].Skins[2], 1, 6) .. "_m.p3d", "skin", "forsale", 2, ({120, 170, 240})[Difficulty.Current], "interior")
Game.BindReward(Rewards[2].Skins[3], "art\\chars\\" .. string.sub(Rewards[2].Skins[3], 1, 6) .. "_m.p3d", "skin", "forsale", 2, ({100, 150, 210})[Difficulty.Current], "interior")
Game.BindReward(Rewards[2].Skins[4], "art\\chars\\" .. string.sub(Rewards[2].Skins[4], 1, 6) .. "_m.p3d", "skin", "forsale", 2, ({110, 160, 210})[Difficulty.Current], "interior")
-- Game.BindReward(Rewards[2].Skins[5], "art\\chars\\" .. string.sub(Rewards[2].Skins[5], 1, 6) .. "_m.p3d", "skin", "forsale", 2, 0, "interior")

Game.BindReward(Rewards[3].Skins[1], "art\\chars\\" .. string.sub(Rewards[3].Skins[1], 1, 6) .. "_m.p3d", "skin", "defaultskin", 3)
Game.BindReward(Rewards[3].Skins[2], "art\\chars\\" .. string.sub(Rewards[3].Skins[2], 1, 6) .. "_m.p3d", "skin", "forsale", 3, ({200, 250, 300})[Difficulty.Current], "interior")
Game.BindReward(Rewards[3].Skins[3], "art\\chars\\" .. string.sub(Rewards[3].Skins[3], 1, 6) .. "_m.p3d", "skin", "forsale", 3, ({180, 220, 275})[Difficulty.Current], "interior")
Game.BindReward(Rewards[3].Skins[4], "art\\chars\\" .. string.sub(Rewards[3].Skins[4], 1, 6) .. "_m.p3d", "skin", "forsale", 3, ({190, 235, 290})[Difficulty.Current], "interior")
-- Game.BindReward(Rewards[3].Skins[5], "art\\chars\\" .. string.sub(Rewards[3].Skins[5], 1, 6) .. "_m.p3d", "skin", "forsale", 3, 0, "interior")

-- Game.BindReward(Rewards[4].Skins[1], "art\\chars\\" .. string.sub(Rewards[4].Skins[1], 1, 6) .. "_m.p3d", "skin", "defaultskin", 4)
-- Game.BindReward(Rewards[4].Skins[2], "art\\chars\\" .. string.sub(Rewards[4].Skins[2], 1, 6) .. "_m.p3d", "skin", "forsale", 4, ({250, 300, 350})[Difficulty.Current], "interior")
-- Game.BindReward(Rewards[4].Skins[3], "art\\chars\\" .. string.sub(Rewards[4].Skins[3], 1, 6) .. "_m.p3d", "skin", "forsale", 4, ({260, 310, 360})[Difficulty.Current], "interior")
-- Game.BindReward(Rewards[4].Skins[4], "art\\chars\\" .. string.sub(Rewards[4].Skins[4], 1, 6) .. "_m.p3d", "skin", "forsale", 4, ({270, 320, 370})[Difficulty.Current], "interior")
-- Game.BindReward(Rewards[4].Skins[5], "art\\chars\\" .. string.sub(Rewards[4].Skins[5], 1, 6) .. "_m.p3d", "skin", "forsale", 4, 0, "interior")
	
-- Set Total Gags
Game.SetTotalGags(1, Rewards[1].Gags)	-- Original Total: 15
Game.SetTotalGags(2, Rewards[2].Gags)	-- Original Total: 11
Game.SetTotalGags(3, Rewards[3].Gags)	-- Original Total: 11
Game.SetTotalGags(4, Rewards[3].Gags)	-- Original Total: 15

-- Set Total Wasps
Game.SetTotalWasps(1, Rewards[1].Wasps)	-- Original Total: 20
Game.SetTotalWasps(2, Rewards[2].Wasps)	-- Original Total: 20
Game.SetTotalWasps(3, Rewards[3].Wasps)	-- Original Total: 20
Game.SetTotalWasps(4, Rewards[4].Wasps)	-- Original Total: 20
-- Duff Poster in Moe's
Game.GagBegin("gag_duff.p3d")
	Game.GagSetInterior("moe1")
	Game.GagSetCycle("cycle")
	Game.GagSetPosition("Duff")
	Game.GagSetRandom(0)
	Game.GagSetTrigger("touch","DuffTrig",2)
Game.GagEnd()

-- Effects in the DMV
Game.GagBegin("gag_smk.p3d")
	Game.GagSetInterior("dmv")
	Game.GagSetCycle("cycle")
	Game.GagSetPosition(-5.688,-17.091,-201.131)
	Game.GagSetRandom(0)
	Game.GagSetSound("gag_smk")
	Game.GagSetTrigger("touch",-6.001,-19.997,-206.173,2)
Game.GagEnd()
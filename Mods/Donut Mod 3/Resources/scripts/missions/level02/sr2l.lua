AICars = {"elect_v","thrill_v","wiggu_v","scorp_v"}

Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\race.p3d")
Game.LoadP3DFile("art\\missions\\generic\\fline.p3d")

Game.LoadP3DFile("art\\cameras\\l2sr2.p3d")
Game.LoadP3DFile("art\\locators\\l2sr2.p3d")

Game.LoadDisposableCar("art\\cars\\" .. AICars[1] .. ".p3d", AICars[1], "AI")
Game.LoadDisposableCar("art\\cars\\" .. AICars[2] .. ".p3d", AICars[2], "AI")

if Difficulty.IsHellfish then
	Game.LoadDisposableCar("art\\cars\\" .. AICars[3] .. ".p3d", AICars[3], "AI")
	Game.LoadDisposableCar("art\\cars\\" .. AICars[4] .. ".p3d", AICars[4], "AI")
end
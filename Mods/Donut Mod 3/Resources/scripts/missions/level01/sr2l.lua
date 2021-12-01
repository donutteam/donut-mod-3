Game.LoadP3DFile("art\\missions\\generic\\fline.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\race.p3d")

Game.LoadP3DFile("art\\locators\\l1sr2.p3d")

Game.LoadDisposableCar("art\\cars\\firebird.p3d","firebird","AI")
Game.LoadDisposableCar("art\\cars\\nuctruck.p3d","nuctruck","AI")

if not Difficulty.IsNormal then
	Game.LoadDisposableCar("art\\cars\\payday.p3d","payday","AI")
	Game.LoadDisposableCar("art\\cars\\dol_v.p3d","dol_v","AI")
end
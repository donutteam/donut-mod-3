Game.LoadP3DFile("art\\missions\\generic\\fline.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\location\\mansion.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\location\\pwrplant.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\char\\burns.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\vehicle\\smith_v.p3d")

Game.LoadP3DFile("art\\icons\\cars\\nukebus.p3d")
Game.LoadP3DFile("art\\locators\\l1m7.p3d")

Game.LoadDisposableCar("art\\cars\\smith_v.p3d","smith_v","AI")
Game.LoadDisposableCar("art\\cars\\nukebus.p3d","nukebus","AI")
Game.LoadDisposableCar("art\\cars\\nukebusB.p3d","nukebusB","AI")

if Difficulty.IsHellfish then
	Game.LoadDisposableCar("art\\cars\\nukebusR.p3d","nukebusR","AI")
end
if Settings.DisableLevel1Mission3 then return end

Game.LoadP3DFile("art\\missions\\level01\\m3.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\char\\smithers.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\location\\pwrplant.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\location\\wstation.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\litter.p3d")

Game.LoadP3DFile("art\\effects\\garbage_explosion.p3d")
Game.LoadP3DFile("art\\icons\\cars\\car_icon.p3d")
Game.LoadP3DFile("art\\icons\\cars\\garbage.p3d")
Game.LoadP3DFile("art\\icons\\locations\\simpdoor.p3d")
Game.LoadP3DFile("art\\locators\\l1m3.p3d")
Game.LoadP3DFile("art\\pickups\\garbage_can.p3d")

Game.LoadDisposableCar("art\\cars\\smith_v.p3d","smith_v","AI")
Game.LoadDisposableCar("art\\cars\\garbage.p3d","garbage","AI")

if Difficulty.IsDeathfish then
	Game.LoadDisposableCar("art\\cars\\death.p3d","death","OTHER")
	Game.LoadDisposableCar("art\\cars\\nukebusR.p3d","nukebusR","AI")
	Game.LoadDisposableCar("art\\cars\\nuctruck.p3d","nuctruck","AI")
end
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\char\\ned.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\tuxedo.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\lawnmwr.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\char\\barne.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\cooler.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\lawnchr.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\photo.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\inhaler.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\vehicle\\wiggu_v.p3d")

Game.LoadP3DFile("art\\icons\\cars\\car_icon.p3d")
Game.LoadP3DFile("art\\icons\\cars\\plowk_v.p3d")
Game.LoadP3DFile("art\\icons\\locations\\commun.p3d")
Game.LoadP3DFile("art\\locators\\l1m2.p3d")
Game.LoadP3DFile("art\\pickups\\flanders_picture.p3d")
Game.LoadP3DFile("art\\pickups\\inhaler.p3d")
Game.LoadP3DFile("art\\pickups\\crate_duff.p3d")
Game.LoadP3DFile("art\\pickups\\lawnchair.p3d")
Game.LoadP3DFile("art\\pickups\\lawnmower.p3d")
Game.LoadP3DFile("art\\pickups\\tuxedo.p3d")
Game.LoadP3DFile("art\\pickups\\cooler.p3d")

if Difficulty.IsDeathfish then
	Game.LoadDisposableCar("art\\cars\\death.p3d","death","OTHER")
end

Game.LoadDisposableCar("art\\cars\\cDuff.p3d","cDuff","AI")
Game.LoadDisposableCar("art\\cars\\wiggu_v.p3d","wiggu_v","AI")
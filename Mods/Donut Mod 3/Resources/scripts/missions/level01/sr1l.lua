Game.SetPresentationBitmap("/GameData/art/banners/l1r1bnnr.p3d")

Game.LoadP3DFile("art\\missions\\generic\\fline.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\object\\race.p3d")
Game.LoadP3DFile("art\\frontend\\dynaload\\images\\msnicons\\vehicle\\cletus_v.p3d")

Game.LoadP3DFile("art\\cameras\\l1sr1.p3d")
Game.LoadP3DFile("art\\icons\\cars\\cDuff.p3d")
Game.LoadP3DFile("art\\icons\\cars\\cBone.p3d")
Game.LoadP3DFile("art\\icons\\cars\\cCube.p3d")
Game.LoadP3DFile("art\\icons\\cars\\glastruc.p3d")
Game.LoadP3DFile("art\\icons\\cars\\dtstruck.p3d")
Game.LoadP3DFile("art\\icons\\cars\\mrplo_v.p3d")
Game.LoadP3DFile("art\\icons\\cars\\plowk_v.p3d")
Game.LoadP3DFile("art\\locators\\l1sr1.p3d")

Car2Info = ({
	{"cBone", 2},
	{"cCube", 6},
})[math.random(1,2)]

Car3Info = ({
	{"glastruc", 3},
	{"dtstruck", 7},
})[math.random(1,2)]

Game.LoadDisposableCar("art\\cars\\cDuff.p3d","cDuff","AI")
Game.LoadDisposableCar("art\\cars\\" .. Car2Info[1] .. ".p3d", Car2Info[1] ,"AI")
Game.LoadDisposableCar("art\\cars\\" .. Car3Info[1] .. ".p3d", Car3Info[1], "AI")

if Difficulty.IsNormal then
	Game.LoadDisposableCar("art\\cars\\mrplo_v.p3d","mrplo_v","AI")
else
	Game.LoadDisposableCar("art\\cars\\plowk_v.p3d","plowk_v","AI")
	Game.LoadDisposableCar("art\\cars\\cletu_v.p3d","cletu_v","AI")
end
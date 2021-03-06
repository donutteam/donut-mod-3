Game.SelectMission("m6sd")
	Game.SetMissionResetPlayerOutCar("m6_homer_start","m6_current_carstart")
	Game.SetDynaLoadData("l1z3.p3d;l1r3.p3d;l1r2.p3d;")
	Game.UsePedGroup(3)
	Game.SetPresentationBitmap("art/banners/l1m6bnnr.p3d")

	Game.SetMissionStartCameraName("mission6camShape")
	Game.SetMissionStartMulticontName("mission6cam")
	Game.SetAnimatedCameraName("mission6camShape")
	Game.SetAnimCamMulticontName("mission6cam")
	
	Game.AddStage(1)
		Game.SetStageMessageIndex(1)
		Game.SetHUDIcon("grocery")
		Game.SetMaxTraffic(2)
		
		Game.AddStageVehicle("marge_v","m6_marge_v_carstart","NULL","missions\\l1m6\\marge_v.con")
		
		Game.AddObjective("goto")
			Game.AddNPC("marge","m6_marge_start")
			Game.SetDestination("m6_grocerystore","carsphere")
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(2) Game.RESET_TO_HERE()
		Game.SetHUDIcon("marge")
		Game.SetStageMessageIndex(2)
		
		Game.AddObjective("talkto")
			Game.AddNPC("marge","m6_marge_start")
			Game.SetTalkToTarget("marge",0,0.2)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(3)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_shaking_fist")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_scratch_head")
			Game.SetDialogueInfo("homer","marge","violent",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
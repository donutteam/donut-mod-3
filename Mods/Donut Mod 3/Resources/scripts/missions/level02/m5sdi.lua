Game.SelectMission("m5sd")
	Game.SetMissionResetPlayerOutCar("m5_bart_start","m5_current_carstart")
	Game.SetDynaLoadData("l2z1.p3d;l2z4.p3d;l2r4.p3d;")
	Game.UsePedGroup(1)
	Game.SetPresentationBitmap("art/banners/l2m5bnnr.p3d")

	Game.SetMissionStartCameraName("mission2camShape")
	Game.SetMissionStartMulticontName("mission2cam")
	Game.SetAnimatedCameraName("mission2camShape")
	Game.SetAnimCamMulticontName("mission2cam")
	
	Game.AddStage(0)
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("cletus")
		Game.SetStageMessageIndex(1)
		
		Game.AddStageVehicle("cletu_v","m5_cletu_v_carstart","NULL","missions\\l2m5\\cletu_v.con")
		
		Game.AddObjective("talkto")
			Game.AddNPC("cletus","m5_cletus_start")
			Game.SetTalkToTarget("cletus",0,0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_scratch_head")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_cross_arms")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("m5_bestside")
			Game.SetDialogueInfo("bart","cletus","slack",0)
			Game.SetDialoguePositions("m5_bart_slack","m5_cletus_slack","m5_cletu_v_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
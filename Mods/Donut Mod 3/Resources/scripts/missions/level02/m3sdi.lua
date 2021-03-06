Game.SelectMission("m3sd")
	Game.SetMissionResetPlayerOutCar("m3_bart_start","m3_current_carstart")
	Game.SetDynaLoadData("l2z4.p3d;l2r3.p3d;l2r4.p3d;")
	Game.UsePedGroup(5)
	Game.SetPresentationBitmap("art/banners/l2m3bnnr.p3d")

	Game.SetMissionStartCameraName("mission3camShape")
	Game.SetMissionStartMulticontName("mission3cam")
	Game.SetAnimatedCameraName("mission3camShape")
	Game.SetAnimCamMulticontName("mission3cam")
	
	Game.AddStage(0)
		Game.SetStageMessageIndex(1)
		Game.SetHUDIcon("google")
		Game.SetMaxTraffic(5)
		
		Game.AddStageVehicle("comic_v","m3_comic_v_carstart","NULL","missions\\l2m3\\comic_v.con")
			
		Game.AddObjective("goto")
			Game.AddNPC("cbg","m3_cbg_start")
			Game.SetDestination("m3_googleplex","carsphere")
		Game.CloseObjective()
	Game.CloseStage()	

	Game.AddStage(0)
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("cbg")
		Game.SetStageMessageIndex(2)
		
		Game.AddObjective("talkto")
			Game.AddNPC("cbg","m3_cbg_start")
			Game.SetTalkToTarget("cbg",0,0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"pc_far")
			Game.SetConversationCam(1,"npc_far")
			Game.SetConversationCam(2,"pc_far")
			Game.SetConversationCam(3,"npc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_no")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("bart","cbg","jabba",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
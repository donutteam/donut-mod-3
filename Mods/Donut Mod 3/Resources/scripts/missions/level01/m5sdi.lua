Game.SelectMission("m5sd")
	Game.SetMissionResetPlayerOutCar("m5_homer_start","m5_current_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(0)
	Game.SetPresentationBitmap("art/banners/l1m5bnnr.p3d")
	
	Game.SetMissionStartCameraName("mission6camShape")
	Game.SetMissionStartMulticontName("mission6cam")
	Game.SetAnimatedCameraName("mission6camShape")
	Game.SetAnimCamMulticontName("mission6cam")
	
	Game.AddStage()	Game.RESET_TO_HERE()
		Game.SetHUDIcon("frkhouse")
		Game.SetStageMessageIndex(1)
		Game.SetMaxTraffic(2)
		
		Game.AddStageVehicle("ironman","m5_frink_v_carstart","NULL","missions\\l1m5\\frink_v.con")
		
		Game.AddObjective("goto")
			Game.AddNPC("frink","m5_frink_start")
			Game.SetDestination("m5_frinkshouse","carsphere")
		Game.CloseStage()
	Game.CloseStage()
	
	Game.AddStage(0)
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("frink")	
		Game.SetStageMessageIndex(2)
		
		Game.AddObjective("talkto","neither")
			Game.AddNPC("frink","m5_frink_start")
			Game.SetTalkToTarget("frink",0,0.2)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_far")
			Game.SetConversationCam(1,"pc_near")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_thinking")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_scratch_head")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.SetCamBestSide("bestside_m0")
			Game.SetDialogueInfo("homer","frink","morwaste",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
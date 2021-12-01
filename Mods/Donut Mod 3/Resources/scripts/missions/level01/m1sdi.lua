Game.SelectMission("m1sd")
	Game.SetMissionResetPlayerOutCar("m1_homer_start","m1_current_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(0)
	Game.SetPresentationBitmap("art/banners/l1m1bnnr.p3d")
	
	Game.SetMissionStartCameraName("mission1camShape")
	Game.SetMissionStartMulticontName("mission1cam")
	Game.SetAnimatedCameraName("mission1camShape")
	Game.SetAnimCamMulticontName("mission1cam")
	
	Game.AddStage(0) Game.RESET_TO_HERE()
		Game.SetHUDIcon("marge")
		Game.SetStageMessageIndex(1)
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("talkto","both")
			Game.AddNPC("marge","m1_marge_start")
			Game.SetTalkToTarget("marge",0,0.2)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(1)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_far")
			Game.SetConversationCam(1,"pc_near")
			Game.SetConversationCam(2,"npc_far")
			Game.SetConversationCam(3,"pc_near")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_thinking")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.SetDialogueInfo("homer","marge","project",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
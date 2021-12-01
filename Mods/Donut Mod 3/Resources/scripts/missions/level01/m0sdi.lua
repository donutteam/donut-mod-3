Game.SelectMission("m0sd")
	Game.SetMissionResetPlayerOutCar("m0_homer_start","m0_current_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(0)
	Game.SetPresentationBitmap("art/banners/l1m0bnnr.p3d")
	
	Game.SetMissionStartCameraName("mission0camShape")
	Game.SetMissionStartMulticontName("mission0cam")

	Game.SetInitialWalk("m0_homer_initialwalk")
	
	Game.AddStage(0)
		Game.SetHUDIcon("marge")	
		Game.SetStageMessageIndex(1)
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("talkto","neither")
			Game.AddNPC("marge","m0_marge_start")
			Game.SetTalkToTarget("marge",0,0.2)
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
			Game.SetDialogueInfo("homer","marge","icecream",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
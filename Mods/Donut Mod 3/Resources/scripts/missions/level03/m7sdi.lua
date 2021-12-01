Game.SelectMission("m7sd")
	Game.SetMissionResetPlayerOutCar("m7_lisa_start", "m7_current_carstart")
	Game.SetDynaLoadData("l3z3.p3d;l3r3.p3d;l3r2.p3d;")
	Game.UsePedGroup(5)
	Game.SetPresentationBitmap("art/banners/l3m7bnnr.p3d")

	Game.SetAnimatedCameraName("mission6camShape")
	Game.SetAnimCamMulticontName("mission6cam")
	Game.SetMissionStartCameraName("mission6camShape")
	Game.SetMissionStartMulticontName("mission6cam")

	Game.AddStage(0)
		Game.SetHUDIcon("chum")
		Game.SetStageMessageIndex(1)
		Game.SetMaxTraffic(3)
		
		Game.AddObjective("goto")
			Game.AddNPC("captain","m7_captain_start")
			Game.SetDestination("m7_fishstore", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(5) Game.RESET_TO_HERE()
		Game.SetHUDIcon("scaptain")
		Game.SetStageMessageIndex(2)
		
		Game.AddObjective("talkto")
			Game.AddNPC("captain","m7_captain_start")
			Game.AddObjectiveNPCWaypoint("captain", "m7_captain_walk1")
			Game.SetTalkToTarget("captain", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"pc_near")
			Game.SetConversationCam(1,"npc_far")
			Game.SetConversationCam(2,"pc_near")
			Game.SetConversationCam(3,"npc_far")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("m6_bestside")
			Game.SetDialogueInfo("lisa","captain","blacklimo",0)
			Game.SetDialoguePositions("m7_lisa_blacklimo","m7_captain_blacklimo","m7_current_carstart")
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()
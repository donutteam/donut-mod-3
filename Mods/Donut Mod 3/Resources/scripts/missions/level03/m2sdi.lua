Game.SelectMission("m2sd")
	Game.SetMissionResetPlayerOutCar("m2_lisa_start","m2_current_carstart")
	Game.SetDynaLoadData("l3z1.p3d;l3r1.p3d;l3r5.p3d;l3r5_dam.p3d;")
	Game.UsePedGroup(0)
	Game.SetPresentationBitmap("art/banners/l3m2bnnr.p3d")

	Game.SetAnimatedCameraName("mission2camShape")
	Game.SetAnimCamMulticontName("mission2cam")
	Game.SetMissionStartCameraName("mission2camShape")
	Game.SetMissionStartMulticontName("mission2cam")

	Game.AddStage(0)
		Game.SetStageMessageIndex(1)
		Game.SetHUDIcon("noise")
		Game.SetMaxTraffic(3)
		Game.AddObjective("goto")
			Game.AddNPC("milhouse","m2_milhouse_start")
			Game.SetDestination("m2_arcade","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0) Game.RESET_TO_HERE()
		Game.SetHUDIcon("milhouse")
		Game.SetStageMessageIndex(2)
		
		Game.AddObjective("talkto")
			Game.AddNPC("milhouse","m2_milhouse_start")
			Game.AddObjectiveNPCWaypoint("milhouse", "m2_milhouse_walk1")
			Game.SetTalkToTarget("milhouse", 0, -0.5)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize( 1, 0) 
			Game.AmbientAnimationRandomize( 0, 0)
			Game.SetConversationCam(0, "npc_far")
			Game.SetConversationCam(1, "pc_far")
			Game.SetConversationCam(2, "npc_far")
			Game.SetConversationCam(3, "pc_far")
			Game.AddAmbientNpcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_thinking")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_no")
			Game.SetCamBestSide("m2_bestside3")
			Game.SetDialogueInfo("lisa","milhouse","store",0)
			Game.SetDialoguePositions("m2_lisa_loc3","m2_milhouse_2","m2_sedanstart_2")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()


Game.SelectMission("m4sd")
	Game.SetMissionResetPlayerOutCar("m4_lisa_start","m4_current_carstart")
	Game.SetDynaLoadData("l3z5.p3d;l3r5.p3d;l3r4.p3d;l3r5_dam.p3d;")
	Game.UsePedGroup(4)
	Game.SetPresentationBitmap("art/banners/l3m4bnnr.p3d")

	Game.SetAnimatedCameraName("mission4camShape")
	Game.SetAnimCamMulticontName("mission4cam")
	Game.SetMissionStartCameraName("mission4camShape")
	Game.SetMissionStartMulticontName("mission4cam")

	Game.AddStage(5) Game.RESET_TO_HERE()
		Game.SetHUDIcon("grampa")
		Game.SetStageMessageIndex(1)
		Game.SetMaxTraffic(3)
		
		Game.AddStageVehicle("gramp_v","m4_gramp_v_carstart","NULL","missions\\l3m4\\gramp_v.con")
		
		Game.AddObjective("talkto")
			Game.AddNPC("grandpa","m4_grandpa_start")
			Game.SetTalkToTarget("grandpa", 0, 0)
			
			--[[
			Game.AddObjectiveNPCWaypoint("grandpa", "m4_grampa_walk1")
			Game.AddObjectiveNPCWaypoint("grandpa", "m4_grampa_walk2")
			Game.AddObjectiveNPCWaypoint("grandpa", "m4_grampa_walk3")
			Game.AddObjectiveNPCWaypoint("grandpa", "m4_lisa_start")
			--]]
			
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageMessageIndex(2)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize( 1, 0) 
			Game.AmbientAnimationRandomize( 0, 0)
			Game.SetConversationCam(0, "pc_far") 
			Game.SetConversationCam(1, "npc_near")
			Game.SetConversationCam(2, "pc_far")
			Game.SetConversationCam(3, "npc_far")
			Game.SetConversationCam(4, "pc_near")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_shaking_fist")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.SetCamBestSide("m4_bestside")
			Game.SetDialogueInfo("lisa","grandpa","kaiser2",0)
			Game.SetDialoguePositions("m4_lisa_kaiser2","m4_grandpa_kaiser2","m4_current_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
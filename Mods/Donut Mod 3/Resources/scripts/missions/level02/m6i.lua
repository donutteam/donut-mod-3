Game.SelectMission("m6")
	Game.SetMissionResetPlayerInCar("m6_current_carstart2")
	Game.SetDynaLoadData("l2r1.p3d;l2z1.p3d;l2r4.p3d;")
	Game.UsePedGroup(6)
	Game.SetNumValidFailureHints(5)

	Game.AddStage() Game.RESET_TO_HERE()
		Game.SetHUDIcon("monkey")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({85,63})[Difficulty.Current])
		
		Game.AddStageCharacter("bart","NULL","","current","m6_current_carstart2")
		Game.AddStageVehicle("animctrl","m6_animctrl_carstart","NULL","missions\\l2m6\\animctrl"..tostring(Difficulty.Current)..".con")
		
		local LocatorName = ({"m6_nm_mon_trail","m6_monkey","m6_monkey"})[Difficulty.Current]
		Game.AddObjective("delivery")
			Game.AddNPC("nriviera","m6_nriviera_start")
			for i = 1, ({18, 15, 15})[Difficulty.Current], 1 do
				Game.AddCollectible(LocatorName .. tostring(i),"monkey")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("animctrl")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(180)
		Game.SetMaxTraffic(1)
		
		Game.ActivateVehicle("animctrl","NULL","evade")
		
		for i = 1, 14, 1 do
			Game.AddStageWaypoint("m6_animctrl_waypoint"..tostring(i))
		end
		
		Game.AddObjective("destroy")
			Game.SetObjTargetVehicle("animctrl")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("monkey")
		Game.SetStageMessageIndex(6)
		Game.SetStageTime(({180,135})[Difficulty.Current])
		
		Game.AddObjective("delivery")
			for i = 16, 45, 1 do
				Game.AddCollectible("m6_monkey" .. tostring(i), "monkey")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage(0)
		Game.SetHUDIcon("scream")
		Game.SetStageMessageIndex(7)
		
		Game.AddObjective("goto")
			Game.AddNPC("nriviera","m6_nriviera_start")
			Game.SetDestination("m6_screamingmonkey","carsphere")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(4)
		Game.SetHUDIcon("drnick")
		Game.SetStageMessageIndex(3)
		
		Game.AddObjective("talkto","neither")
			Game.AddNPC("nriviera","m6_nriviera_start")
			Game.SetTalkToTarget("nriviera",0,0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_far")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.SetDialogueInfo("bart","nriviera","electrode",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.SetHUDIcon("blender")
		Game.SetStageMessageIndex(8)
		
		Game.AddObjective("goto","neither")
			Game.AddNPC("nriviera","m6_nriviera_start")
			Game.SetDestination("m6_blend","blender")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
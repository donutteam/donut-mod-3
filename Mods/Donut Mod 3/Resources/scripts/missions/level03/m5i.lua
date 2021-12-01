Game.SelectMission("m5")
	Game.SetMissionResetPlayerInCar("m5_wiggu_v_carstart")
	Game.SetDynaLoadData("l3r2.p3d;l3z2.p3d;l3z3.p3d;l3r1.p3d;")
	Game.UsePedGroup(3)
	Game.SetNumValidFailureHints(5)

	Game.AddStage(0)
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(12)
		if not Difficulty.IsNormal then
			Game.SetStageTime(10)
		else
			Game.DisableHitAndRun()
		end
		
		Game.AddObjective("getin", "neither")
			Game.AddNPC("wiggum", "m5_wiggum_start")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
	Game.CloseStage()

	Game.AddStage(5) Game.RESET_TO_HERE()
		Game.SetHUDIcon("snake")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({85,70})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.AddObjective("goto")
			Game.SetDestination("mhouse_loc2")
			Game.AddStageVehicle("wiggu_v","m5_snake_v_carstart","NULL","missions\\l3m5\\wiggu_v" .. tostring(Difficulty.Current) .. ".con", "snake")
			Game.AddNPC("wiggum","m5_wiggum_start")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()

		Game.ShowStageComplete()
		Game.SetCompletionDialog("backhere","snake")
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("wiggu_v")
		Game.SetStageMessageIndex(({4,6})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		Game.SetMaxTraffic(3) 
		
		Game.AddStageVehicle("cPolice","m5_cPolice_carstart","NULL","missions\\l3m5\\cPolice.con")
		
		Game.ActivateVehicle("wiggu_v","NULL","evade")
		Game.SetVehicleAIParams("wiggu_v", 0, 1) 
		
		for i = 1, 7, 1 do
			Game.AddStageWaypoint("m5_waypoint" .. tostring(i))
		end
		
		if Difficulty.IsNormal then
			Game.AddObjective("follow","neither")
				Game.SetObjTargetVehicle("wiggu_v")
			Game.CloseObjective()
		else
			Game.AddObjective("dump", "neither")
				Game.SetObjTargetVehicle("wiggu_v")
				Game.AddCollectible("m5_item1","jeans")
				Game.BindCollectibleTo(0, 0)
				Game.AddCollectible("m5_item2","icecream_tub")
				Game.BindCollectibleTo(1, 1)
				Game.AddCollectible("m5_item3","donut_chocolate")
				Game.BindCollectibleTo(2, 2)
				Game.AddCollectible("m5_item4","moleman_dead")
				Game.BindCollectibleTo(3, 3)
				Game.AddCollectible("m5_item5","buzzcola")
				Game.BindCollectibleTo(4, 4)
				Game.AddCollectible("m5_item6","donut_chocolate")
				Game.BindCollectibleTo(5, 5)
				Game.AddCollectible("m5_item7","buzzcola")
				Game.BindCollectibleTo(6, 6)
				Game.AddNPC("wiggum", "m5_wiggum_start")
			Game.CloseObjective()
		end
		
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, ({150,200})[Difficulty.Current]) --Distance is purposefully lower on Normal.
			Game.SetCondTargetVehicle("wiggu_v")
		Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetFadeOut(1.0)
		Game.SetCompletionDialog("gotcha")
	Game.CloseStage()

	Game.AddStage(1) -- Game.RESET_TO_HERE() -- Stay in black stage.
		Game.AddStageCharacter("lisa","m5_lisa_end","","current","m5_current_end")
		
		Game.AddObjective("timer")
			Game.RemoveDriver("snake")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("snake")
		Game.SetStageMessageIndex(5)
		
		Game.AddObjective("talkto")
			Game.AddNPC("snake", "m5_snake_arrest")
			Game.AddNPC("wiggum", "m5_wiggum_start")
			Game.AddStageVehicle("wiggu_v","m5_wiggu_v_carstart","NULL","missions\\l3m5\\wiggu_v1.con")
			Game.AddStageVehicle("cPolice","m5_cPolice_carstart","NULL","missions\\l3m5\\cPolice.con")
			Game.SetTalkToTarget("snake", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)  
			Game.AmbientAnimationRandomize(0, 0)
			Game.SetConversationCam(0, "pc_far")
			Game.SetConversationCam(1, "npc_far")
			Game.SetConversationCam(2, "pc_far")
			Game.SetConversationCam(3, "npc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_scratch_head" )
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("m5_bestside")
			Game.AddAmbientPcAnimation( "dialogue_hands_in_air" )
			Game.SetDialogueInfo("lisa","snake","yousuck",0)
			-- Game.SetDialoguePositions("m5_lisa_loc","m5_snake_arrest","m5_carstart")
		Game.CloseObjective()
		
		Game.SetFadeOut(1.0)
	Game.CloseStage()

	Game.AddStage("final")
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.SetStageMessageIndex(7)
		
		Game.AddObjective("timer")
			Game.AddStageVehicle("wiggu_v","m5_wiggu_v_carstart","NULL","missions\\l3m5\\wiggu_v" .. tostring(Difficulty.Current) .. ".con")
			Game.AddStageVehicle("cPolice","m5_snake_v_carstart","NULL","missions\\l3m5\\cPolice.con")
			Game.AddNPC("wiggum", "m5_wiggum_start")
			Game.SetDurationTime(4)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
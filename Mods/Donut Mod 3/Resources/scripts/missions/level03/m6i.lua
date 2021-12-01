Game.SelectMission("m6")
	Game.SetMissionResetPlayerInCar("m6_wiggu_v_carstart")
	Game.SetDynaLoadData("l3r2.p3d;l3z2.p3d;l3z3.p3d;l3r1.p3d;")
	Game.UsePedGroup(3)
	Game.SetNumValidFailureHints(5)

	Game.InitLevelPlayerVehicle("wiggu_v","m6_wiggu_v_carstart","OTHER")
	Game.SetForcedCar()

	Game.AddStage(5) Game.RESET_TO_HERE()
		Game.SetHUDIcon("gasoline")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({35,25})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.AddStageVehicle("cSedan","m6_cSedan_carstart","NULL","missions\\l3m6\\M6Sedan" .. tostring(Difficulty.Current) .. ".con")
			
		Game.AddObjective("goto")
			Game.AddNPC("wiggum", "m6_wiggum_hide")
			Game.SetDestination("m6_gasstation","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.StageStartMusicEvent("M2_start")
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage(16)
		Game.SetHUDIcon("myst")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({90,65})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.AddObjective("delivery")
			Game.AddCollectible("m6_item1","donut_chocolate")
			Game.AddCollectible("m6_item2","donut_chocolate")
			Game.AddCollectible("m6_item3","donut_chocolate")
			Game.AddCollectible("m6_item4","donut_chocolate")
			Game.AddCollectible("m6_item5","buzzcola")
			Game.AddCollectible("m6_item6","buzzcola")
			Game.AddCollectible("m6_item7","buzzcola")
			Game.AddCollectible("m6_item8","buzzcola")
			Game.AddCollectible("m6_item9","buzzcola")
			Game.AddCollectible("m6_item10","buzzcola")
			Game.AddCollectible("m6_item11","buzzcola")
			Game.AddCollectible("m6_item12","buzzcola")
			Game.AddCollectible("m6_item13","buzzcola")
			Game.AddCollectible("m6_item14","buzzcola")	
			Game.AddCollectible("m6_item15","buzzcola")
			Game.AddCollectible("m6_item16","buzzcola")
			Game.AddCollectible("m6_item17","buzzcola")
			Game.AddCollectible("m6_item18","buzzcola")
			Game.AddCollectible("m6_item19","buzzcola")	
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()	
		
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("pills")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({180,145})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.ActivateVehicle("cSedan","NULL","target")
		
		Game.AddStageWaypoint("m6_waypoint1")
		Game.AddStageWaypoint("m6_waypoint1a")
		Game.AddStageWaypoint("m6_waypoint2")
		Game.AddStageWaypoint("m6_waypoint1a")
		Game.AddStageWaypoint("m6_waypoint2a")
		Game.AddStageWaypoint("m6_waypoint3")
		Game.AddStageWaypoint("m6_waypoint4")
		
		Game.AddObjective("dump", "neither")
			Game.AddNPC("wiggum", "m6_wiggum_hide")
			Game.SetObjTargetVehicle("cSedan")
			
			for i = 1, ({8, 15})[Difficulty.Current], 1 do
				Game.AddCollectible("m6_cSedan_item" .. tostring(i), "pills_aggroleve")
			end
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.StageStartMusicEvent("M2_drama")
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("bsedan_v")
		Game.SetStageMessageIndex(6)
		Game.AddStageTime(-1)
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		-- Game.SetMaxTraffic(3)
		
		Game.ActivateVehicle("cSedan","NULL","evade")
		
		Game.AddStageWaypoint("m6_waypoint4")
		Game.AddStageWaypoint("m6_waypoint3")
		Game.AddStageWaypoint("m6_waypoint2")
		Game.AddStageWaypoint("m6_waypoint1a")
		Game.AddStageWaypoint("m6_waypoint1")
		
		Game.AddObjective("destroy", "neither")
			Game.SetObjTargetVehicle("cSedan")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage(5)
		Game.SetHUDIcon("grampa")
		Game.SetStageMessageIndex(7)
		if not Difficulty.IsNormal then
			Game.AddStageTime(55)
		else
			Game.DisableHitAndRun()
		end
		
		Game.AddObjective("goto")
			Game.SetDestination("m6_djh","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		if Difficulty.IsHellfish then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
		Game.ShowStageComplete()
		Game.SetStageMusicAlwaysOn()
		Game.SetFadeOut(1.0)
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("grampa")
		Game.SetStageMessageIndex(8)
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.AddStageCharacter("lisa","m6_lisa_crash","","current","m6_wiggum_wait")
		
		Game.AddObjective("talkto")
			Game.AddNPC("grandpa", "m6_grampa_start")
			Game.SetTalkToTarget("grandpa", 0, 0)
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
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("lisa","grandpa","alright",0)
			Game.SetDialoguePositions("m6_lisa_alright","m6_grampa_alright","m6_wiggum_wait")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("wiggu_v")
		Game.SetStageMessageIndex(9)
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("wiggu_v")
		Game.CloseObjective()
		
		Game.SetCompletionDialog("alone","grandpa")
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("casino")
		Game.SetStageMessageIndex(10)
		Game.SetStageTime(({50,35})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.AddObjective("goto")
			Game.SetDestination("m6_casino", "carsphere")
			Game.TurnGotoDialogOff()
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		--Game.ShowStageComplete()
		Game.StageStartMusicEvent("M7_start")
		Game.AddStageMusicChange()
		Game.SetStageMusicAlwaysOn()
		Game.SetFadeOut(1.0)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m6_current_carstart")
		Game.SetSwapForcedCarLocator("m6_wiggu_v_carstart")
		Game.SetSwapPlayerLocator("m6_lisa_start2")
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("wiggum", "m6_wiggum_start")
			Game.AmbientAnimationRandomize(1, 0)     
			Game.AmbientAnimationRandomize(0, 0)
			Game.SetConversationCam(0, "npc_far")
			Game.SetConversationCam(1, "pc_far")
			Game.SetConversationCam(2, "npc_far")
			Game.SetConversationCam(3, "pc_far")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("dialogue_no")
			Game.AddAmbientNpcAnimation("dialogue_no")
			Game.AddAmbientPcAnimation("dialogue_thinking")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.SetDialogueInfo("lisa","wiggum","aboutbart",0)
			Game.SetDialoguePositions("m6_lisa_hopin","m6_wiggum_hopin","m6_wiggu_v_carstart",1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()


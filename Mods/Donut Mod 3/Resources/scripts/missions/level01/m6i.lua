Game.SelectMission("m6")
	Game.SetMissionResetPlayerInCar("m6_marge_v_carstart")
	Game.SetDynaLoadData("l1z3.p3d;l1r3.p3d;l1r2.p3d;")
	Game.UsePedGroup(3)
	Game.SetNumValidFailureHints(5)
	
	Game.InitLevelPlayerVehicle("marge_v","m6_marge_v_carstart","OTHER")
	Game.SetForcedCar()
	
	Game.AddStage() Game.RESET_TO_HERE()
		Game.SetHUDIcon("bonestor")
		Game.SetStageMessageIndex(16)
		Game.SetStageTime(({255, 90})[Difficulty.Current])
		Game.SetMaxTraffic(({2, 3, 3})[Difficulty.Current])
		
		Game.AddStageVehicle("cBone","m6_cBone_carstart","target","missions\\l1m6\\cBone.con","jasper")
		Game.SetVehicleAIParams("cBone",-10,-9)
		
		Game.AddStageWaypoint("m6_cBone_waypoint1")
		Game.AddStageWaypoint("m6_cBone_waypoint2")
		Game.AddStageWaypoint("m6_cBone_waypoint3")

		Game.StartCountdown("count")

		Game.AddObjective("dump","neither")
			Game.AddNPC("marge","marge_hide")
			Game.SetObjTargetVehicle("cBone")
			for i = 1, ({14, 18})[Difficulty.Current], 1 do
				Game.AddCollectible("m6_bonestorm" .. tostring(i), "crate_bonestorm")
			end
			Game.SetCollectibleEffect("bonestorm_explosion")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("commun")
		Game.SetStageMessageIndex(4)
		Game.SetMaxTraffic(({2, 3, 3})[Difficulty.Current])
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 35, 50})[Difficulty.Current])
		end
		
		Game.AddStageVehicle("cCellB","m6_cCellB_carstart","NULL","missions\\l1m6\\cCellB" .. tostring(Difficulty.Current) .. ".con")
		
		Game.AddObjective("goto")
			Game.SetDestination("m6_communitycenter","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cCellB")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({120, 60})[Difficulty.Current])
		Game.SetMaxTraffic(({2, 4})[Difficulty.Current])
		
		Game.ActivateVehicle("cCellB","NULL","evade")
		
		Game.AddStageWaypoint("m6_cCellB_waypoint1")
		Game.AddStageWaypoint("m6_cCellB_waypoint2")
		Game.AddStageWaypoint("m6_cCellB_waypoint3")
		Game.AddStageWaypoint("m6_cCellB_waypoint2")
		Game.AddStageWaypoint("m6_cCellB_waypoint1")
		
		Game.AddObjective("destroy")
			Game.SetObjTargetVehicle("cCellB")
		Game.CloseCondition()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.StageStartMusicEvent("M6_drama")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("kwike")
		Game.SetStageMessageIndex(6)
		Game.SetMaxTraffic(({3,4})[Difficulty.Current])
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 35, 30})[Difficulty.Current])
		end
		
		Game.AddStageVehicle("cCellC","m6_cCellC_carstart","NULL","missions\\l1m6\\cCellC" .. tostring(Difficulty.Current) .. ".con")
		
		Game.AddObjective("goto")
			Game.SetDestination("m6_kwikemart","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cCellC")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({120,60})[Difficulty.Current])
		Game.SetMaxTraffic(({3,3})[Difficulty.Current])
		
		Game.ActivateVehicle("cCellC","NULL","evade")
		
		Game.AddStageWaypoint("m6_cCellB_waypoint3")
		Game.AddStageWaypoint("m6_cCellB_waypoint2")
		Game.AddStageWaypoint("m6_cCellB_waypoint1")
		Game.AddStageWaypoint("m6_cCellB_waypoint2")
		Game.AddStageWaypoint("m6_cCellB_waypoint3")
		
		Game.AddObjective("destroy")
			Game.SetObjTargetVehicle("cCellC")
		Game.CloseCondition()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("gasoline")
		Game.SetStageMessageIndex(8)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 50, 45})[Difficulty.Current])
		end
		Game.SetMaxTraffic(({4,4})[Difficulty.Current])
		
		Game.AddStageVehicle("cCellD","m6_cCellD_carstart","NULL","missions\\l1m6\\cCellD" .. tostring(Difficulty.Current) .. ".con")
		
		Game.AddObjective("goto")
			Game.SetDestination("m6_gasstation","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cCellD")
		Game.SetStageMessageIndex(9)
		Game.SetStageTime(({100,60})[Difficulty.Current])
		Game.SetMaxTraffic(({4,2})[Difficulty.Current])
		
		Game.ActivateVehicle("cCellD","NULL","evade")
		
		Game.AddStageWaypoint("m6_cCellB_waypoint1")
		Game.AddStageWaypoint("m6_cCellB_waypoint2")
		Game.AddStageWaypoint("m6_cCellB_waypoint1")
		Game.AddStageWaypoint("m6_cCellB_waypoint2")
		Game.AddStageWaypoint("m6_cCellB_waypoint3")
		Game.AddStageWaypoint("m6_cCellB_waypoint2")
		Game.AddStageWaypoint("m6_cCellB_waypoint1")
		
		Game.AddObjective("destroy")
			Game.SetObjTargetVehicle("cCellD")
		Game.CloseCondition()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage(0)
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(10)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({70,30})[Difficulty.Current])
		end
		Game.SetMaxTraffic(({4,2})[Difficulty.Current])
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m6_simpsonshouse","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetFadeOut(1.0)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m6_current_end")
		Game.SetSwapForcedCarLocator("m6_marge_v_end")
		Game.SetSwapPlayerLocator("m6_homer_end")
	Game.CloseStage()

	Game.AddStage("final")
		Game.SetMaxTraffic(5)
		
		Game.AddObjective("dialogue")
			Game.AddNPC("marge","m6_marge_end")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_far")
			Game.SetConversationCam(1,"pc_near")
			Game.SetConversationCam(2,"npc_far")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("homer","marge","sharing",0)
			Game.SetCamBestSide("bestside_m1")
			Game.SetDialoguePositions("m6_homer_sharing","m6_marge_sharing","m6_marge_v_sharing",1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
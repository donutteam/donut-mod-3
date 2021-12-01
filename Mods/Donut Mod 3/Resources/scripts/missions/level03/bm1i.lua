Game.SelectMission("bm1")
	Game.SetMissionResetPlayerInCar("bm1_skinn_v_carstart")
	Game.SetDynaLoadData("l3z1.p3d;l3r1.p3d;l3z2.p3d;l3r5.p3d;l3r5_dam.p3d;")
	Game.UsePedGroup(1)
	Game.SetNumValidFailureHints(5)
	
	Game.InitLevelPlayerVehicle("skinn_v","bm1_skinn_v_carstart","OTHER")
	Game.SetForcedCar()

	Game.AddStage() Game.RESET_TO_HERE()
		Game.SetHUDIcon("spsign")
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(50)
		
		Game.AddStageVehicle("dol_v","bm1_dolph_carstart","NULL","missions\\l3bm1\\dol_v" .. tostring(Difficulty.Current) .. ".con", "dolph")
		Game.AddStageVehicle("scorp_v","bm1_kearney_carstart","NULL","missions\\l3bm1\\scorp_v" .. tostring(Difficulty.Current) .. ".con", "kearney")
		Game.AddStageVehicle("cBone","bm1_bst_carstart","NULL","missions\\l3bm1\\cBone.con", "jasper")
		if Difficulty.IsHellfish then
			Game.AddStageVehicle("cCellC","bm1_jimbo_carstart","NULL","missions\\l3bm1\\cCellC.con", "jimbo")
		end
		
		Game.AddObjective("goto")
			Game.SetDestination("bm1_fake")
			Game.TurnGotoDialogOff()
			
			Game.AddNPC("skinner","bm1_skinner_hide")
			Game.AddNPC("jimbo","bm1_jimbo_hide")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.StageStartMusicEvent("M2_start")
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("racedk")
		Game.SetStageMessageIndex(2)
		
		Game.ActivateVehicle("dol_v","NULL","race")
		Game.SetVehicleAIParams("dol_v",-10,-9)
		
		Game.ActivateVehicle("scorp_v","NULL","race")
		Game.SetVehicleAIParams("scorp_v",-10,-9)
		
		Game.AddStageWaypoint("bm1_waypoint1")
		Game.AddStageWaypoint("bm1_waypoint2")
		Game.AddStageWaypoint("bm1_waypoint3")
		
		Game.AddObjective("race","neither")
			Game.AddCollectible("bm1_waypoint3","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
		
		Game.StageStartMusicEvent("M2_start")
		Game.SetCompletionDialog("second","skinner")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("bonestor")
		Game.SetStageMessageIndex(({3,7})[Difficulty.Current])
		Game.SetStageTime(({120,95})[Difficulty.Current])
		
		if Difficulty.IsHellfish then
			Game.ActivateVehicle("cCellC","NULL","chase")
		end
		
		Game.AddStageVehicle("cBone", "bm1_cBone_carstart2", "target", "missions\\l3bm1\\cBone.con", "male2") 
		Game.SetVehicleAIParams("cBone",0,1)
		
		for i = 4, 7, 1 do
			Game.AddStageWaypoint("bm1_waypoint" .. tostring(i))
		end
		
		Game.AddObjective("dump", "neither")
			Game.AddNPC("jimbo","bm1_jimbo_hide")
			Game.SetObjTargetVehicle("cBone")
			
			for i = 1, ({10, 12, 12})[Difficulty.Current], 1 do
				Game.AddCollectible("bm1_bst_item" .. tostring(i), "crate_bonestorm")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		
		Game.StageStartMusicEvent("M2_start")
		Game.SetCompletionDialog("truck","skinner")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("squidp")
		Game.SetStageMessageIndex(4)
		Game.AddObjective("goto")
			Game.AddNPC("jimbo","bm1_jimbo_hide") --Jimbo is also here to prevent an issue where he could instantly appear within the player's sight if they complete the above stage on the dock.
			Game.SetDestination("bm1_beach", "carsphere")
		Game.CloseObjective()
		
		Game.SetFadeOut(0.1)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("bm1_current_end")
		Game.SetSwapForcedCarLocator("bm1_skinn_v_end")
		Game.SetSwapPlayerLocator("bm1_lisa_end")
	Game.CloseStage()

	Game.AddStage() 
		Game.AddObjective("timer")
			Game.RemoveDriver("skinner")
			Game.AddNPC("skinner","bm1_skinner_end")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("skinner", "skn_beach")
			Game.SetConversationCam(0, "pc_far")
			Game.SetConversationCam(1, "npc_far")
			Game.AmbientAnimationRandomize(1, 0)    
			Game.AmbientAnimationRandomize(0, 0)
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("lisa","skinner","ridiculous",0)
			Game.SetDialoguePositions("bm1_lisa_end","bm1_skinner_end","bm1_skinn_v_end")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
Game.SelectMission("sr2")
	Game.SetPresentationBitmap("art/banners/l2r2bnnr.p3d")
	
	Game.SetMissionResetPlayerInCar("sr2_current_carstart")
	Game.SetDynaLoadData("l2z1.p3d;l2r1.p3d;l2r4.p3d;")
	
	Game.UsePedGroup(0)
	Game.SetPresentationBitmap("art/banners/l2r2bnnr.p3d")

	Game.StreetRacePropsLoad("l2_sr3p.p3d;")
	Game.StreetRacePropsUnload("l2_sr3p.p3d:")

	Game.SetAnimatedCameraName("race3camShape")
	Game.SetAnimCamMulticontName("race3cam")
	
	Game.AddStage(0) Game.RESET_TO_HERE()
		Game.SetHUDIcon("race")
		Game.SetStageMessageIndex(1)
		
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
		
		Game.AddStageCharacter("bart","NULL","","current","sr2_current_carstart")
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3",1300)
			Game.AddToCountdownSequence("PSYCHE",1400)
			Game.AddToCountdownSequence("2",1200)
			Game.AddToCountdownSequence("PSYCHE",1400)
			Game.AddToCountdownSequence("1",800)
			Game.AddToCountdownSequence("GO",400)

		Game.AddStageVehicle(AICars[1],"sr2_elect_v_carstart","race","missions\\l2sr2\\elect_v" .. tostring(Difficulty.Current) .. ".con","lisa")
		Game.SetVehicleAIParams(AICars[1],50,51) 
		Game.SetStageAIRaceCatchupParams(AICars[1],80,1,1.25,2.5)
		
		Game.AddStageVehicle(AICars[2],"sr2_hotrod_carstart","race","missions\\l2sr2\\hotrod" .. tostring(Difficulty.Current) .. ".con","milhouse")	
		Game.SetVehicleAIParams(AICars[2],50,51) 
		Game.SetStageAIRaceCatchupParams(AICars[2],80,0.7,1.0,1.5)
		
		if Difficulty.IsHellfish then
			Game.AddStageVehicle(AICars[3],"sr2_jmuscle_carstart","race","missions\\l2sr2\\jmuscle.con","ralph") 
			Game.SetVehicleAIParams(AICars[3],50,51) 
			Game.SetStageAIRaceCatchupParams(AICars[3],80,0.7,1.0,1.5)
			
			Game.AddStageVehicle(AICars[4],"sr2_supercar_carstart","race","missions\\l2sr2\\supercar.con","kearney") 
			Game.SetVehicleAIParams(AICars[4],50,51) 
			Game.SetStageAIRaceCatchupParams(AICars[4],80,0.7,1.0,1.5)
		end
			
		Game.AddStageWaypoint("sr2_waypoint1")
		Game.AddStageWaypoint("sr2_waypoint2")
		Game.AddStageWaypoint("sr2_waypoint3")
		Game.AddStageWaypoint("sr2_waypoint4")

		Game.AddObjective("race","neither")
			Game.AddNPC("patty","sr2_patty_start")
			Game.AddNPC("selma","sr2_selma_start")
			Game.AddCollectible("sr2_waypoint5","carsphere")
			Game.AddCollectible("sr2_waypoint6","carsphere")
			Game.AddCollectible("sr2_waypoint7","carsphere")
			Game.AddCollectible("sr2_waypoint8","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(1,"final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty","sr2_patty_success")
			Game.AddNPC("selma","sr2_selma_success")
			Game.SetDialogueInfo("patty","bart","success",0)
			Game.SetDialoguePositions("sr2_patty_success","sr2_bart_success","sr2_current_success")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
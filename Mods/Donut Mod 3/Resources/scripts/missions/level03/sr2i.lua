Game.SelectMission("sr2")
	Game.SetMissionResetPlayerInCar("sr3_carstart")
	Game.SetDynaLoadData("l3z4.p3d;l3r3.p3d;l3r4.p3d;")
	Game.UsePedGroup(6)

	Game.SetAnimatedCameraName("race3camShape")
	Game.SetAnimCamMulticontName("race3cam")

	Game.StreetRacePropsLoad("l3_sr3p.p3d;")
	Game.StreetRacePropsUnload("l3_sr3p.p3d:")


	Game.AddStage(0) Game.RESET_TO_HERE()
		Game.SetHUDIcon("race")
		Game.SetStageMessageIndex(224)
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
		
		Game.PlacePlayerCar("current", "sr3_carstart")
		Game.PutMFPlayerInCar()               

		Game.StartCountdown("count","lisa")
			Game.AddToCountdownSequence("3", 1000)
			Game.AddToCountdownSequence("2", 4000) 
			Game.AddToCountdownSequence("1", 1000) 
			Game.AddToCountdownSequence("GO", 400) 

		if Difficulty.IsNormal then
			Game.AddStageVehicle("marge_v","sr3_AI_carstart1","waypoint","Missions\\level03\\sr3_1st.con","marge")
			Game.SetVehicleAIParams( "marge_v", 50, 51 )
			Game.SetStageAIRaceCatchupParams("marge_v", 80, 0.9, 1.1, 2.2) 
			
			Game.AddStageVehicle("comic_v","sr3_AI_carstart2","waypoint","missions\\l3sr2\\comic_v.con","cbg")
			Game.SetVehicleAIParams( "comic_v", 50, 51 )
			Game.SetStageAIRaceCatchupParams("comic_v", 80, 0.8, 1.0, 2.0) 
			
			Game.AddStageVehicle("cNerd","sr3_AI_carstart4","waypoint","missions\\l3sr2\\cNerd.con","male2")
			Game.SetVehicleAIParams( "cNerd", 50, 51 )
			Game.SetStageAIRaceCatchupParams("cNerd", 80, 0.8, 1.0, 2.0) 
		else
			Game.AddStageVehicle("marge_v","sr3_AI_carstart1","waypoint","Missions\\level03\\sr3_1st.con","marge")
			Game.SetVehicleAIParams( "marge_v", 50, 51 )
			Game.SetStageAIRaceCatchupParams("marge_v", 80, 0.9, 1.1, 2.2) 
			
			Game.AddStageVehicle("plowk_v","sr3_AI_carstart2","waypoint","missions\\l3sr2\\plowk_v.con","barney")
			Game.SetVehicleAIParams( "plowk_v", 50, 51 )
			Game.SetStageAIRaceCatchupParams("plowk_v", 80, 0.9, 1.1, 2.2) 
			
			Game.AddStageVehicle("comic_v","sr3_AI_carstart3","waypoint","missions\\l3sr2\\comic_v.con","cbg")
			Game.SetVehicleAIParams( "comic_v", 50, 51 )
			Game.SetStageAIRaceCatchupParams("comic_v", 80, 0.9, 1.1, 2.2) 
			
			Game.AddStageVehicle("cNerd","sr3_AI_carstart4","waypoint","missions\\l3sr2\\cNerd.con","male2")
			Game.SetVehicleAIParams( "cNerd", 50, 51 )
			Game.SetStageAIRaceCatchupParams("cNerd", 80, 0.9, 1.1, 2.2)
		end

		Game.AddStageWaypoint("sr3_waypoint1")
		Game.AddStageWaypoint("sr3_navpoint1")
		Game.AddStageWaypoint("sr3_navpoint2")

		Game.AddObjective("race", "neither")
			Game.AddNPC("patty", "sr3_patty")
			Game.AddNPC("selma", "sr3_selma")
			Game.AddCollectible("sr3_waypoint1","carsphere")
			Game.AddCollectible("sr3_waypoint2","carsphere")
			Game.AddCollectible("sr3_waypoint3","carsphere")
			Game.AddCollectible("sr3_waypoint4","carsphere")
			Game.AddCollectible("sr3_waypoint5","finish_line")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(1,"final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty", "sr3_patty")
			Game.AddNPC("selma", "sr3_selma")
			Game.SetConversationCam( 0, "npc_far" )
			Game.SetDialogueInfo("patty","lisa","success",0)
			Game.SetDialoguePositions("sr3_patty","sr3_lisa_end","sr3_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
Game.SelectMission("sr2")
	Game.SetMissionResetPlayerInCar("sr2_current_carstart")
	Game.SetDynaLoadData("l1z2.p3d;l1r2.p3d;l1z3.p3d;")
	Game.SetPresentationBitmap("art/banners/l1r2bnnr.p3d")
	Game.UsePedGroup(2)

	Game.StreetRacePropsLoad("l1_sr3p.p3d;")
	Game.StreetRacePropsUnload("l1_sr3p.p3d:")
	
	Game.AddStage(1) Game.RESET_TO_HERE()
		Game.SetHUDIcon("race")
		Game.SetStageMessageIndex(1)
		
		Game.NoTrafficForStage()
		Game.DisableHitAndRun()
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3",800)
			Game.AddToCountdownSequence("2",600)
			Game.AddToCountdownSequence("PSYCHE",500)
			Game.AddToCountdownSequence("1",900)
			Game.AddToCountdownSequence("GO",400)
			
		Game.AddStageVehicle("firebird","sr2_firebird_carstart","race","missions\\l1sr2\\firebird".. tostring(Difficulty.Current) .. ".con","apu") 
		Game.SetStageAIRaceCatchupParams("firebird",80,0.6,1.0,1.75) 
		
		Game.AddStageVehicle("nuctruck","sr2_nuctruck_carstart","race","missions\\l1sr2\\nuctruck".. tostring(Difficulty.Current) ..".con","burns") 
		Game.SetStageAIRaceCatchupParams("nuctruck",80,0.6,1.0,1.75) 
		
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("payday","sr2_payday_carstart","race","missions\\l1sr2\\payday.con","hoxton") 
			Game.SetStageAIRaceCatchupParams("payday",80,0.6,0.9,1.25) 
			
			Game.AddStageVehicle("dol_v","sr2_dol_v_carstart","race","missions\\l1sr2\\dol_v.con","dolph") 
			Game.SetStageAIRaceCatchupParams("dol_v",80,0.6,0.9,1.25)
		end

		Game.AddStageWaypoint("sr2_waypoint1")
		Game.AddStageWaypoint("sr2_waypoint2")
		Game.AddStageWaypoint("sr2_waypoint3")
		Game.AddStageWaypoint("sr2_waypoint4")
		Game.AddStageWaypoint("sr2_finish")

		Game.AddObjective("race","intersection")
			Game.AddCollectible("sr2_waypoint1","carsphere")
			Game.AddCollectible("sr2_waypoint2","carsphere")
			Game.AddCollectible("sr2_waypoint3","carsphere")
			Game.AddCollectible("sr2_waypoint4","carsphere")
			Game.AddCollectible("sr2_finish","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
	Game.CloseStage()
	
	Game.AddStage(1)
		Game.AddObjective("timer")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty","sr2_patty_victory")
			Game.AddNPC("selma","sr2_selma_victory")
			Game.SetDialogueInfo("patty","homer","success",0)
			Game.SetDialoguePositions("sr2_patty_victory","sr2_homer_victory","sr2_current_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
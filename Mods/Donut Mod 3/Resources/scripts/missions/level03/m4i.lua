Game.SelectMission("m4")
	Game.SetMissionResetPlayerInCar("m4_gramp_v_carstart2")
	Game.SetDynaLoadData("l3z5.p3d;l3r5.p3d;l3r4.p3d;l3r5_dam.p3d;")
	Game.UsePedGroup(4)
	Game.SetNumValidFailureHints(5)

	Game.InitLevelPlayerVehicle("gramp_v","m4_gramp_v_carstart2","OTHER")
	Game.SetForcedCar()

	Game.AddStage(0) Game.RESET_TO_HERE()
		Game.SetHUDIcon("redhat")
		Game.SetStageMessageIndex(2)
		Game.SetStageTime(({20,10})[Difficulty.Current])
		Game.NoTrafficForStage()
		
		Game.AddStageVehicle("cSedan","m4_cSedan_carstart","NULL","missions\\l3m4\\cSedan1".. tostring(Difficulty.Current) .. ".con")
		Game.AddObjective("goto")
			Game.SetDestination("m4_redhat","redhat")
		Game.CloseObjective()

		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0) -- Sedan Chase
		Game.SetHUDIcon("bsedan_v")
		Game.SetStageMessageIndex(3)
		Game.SetMaxTraffic(0) 
		
		Game.ActivateVehicle("cSedan","NULL","target")
		Game.AddStageWaypoint("m4_waypoint1")
		Game.AddStageWaypoint("m4_waypoint2")
		Game.AddStageWaypoint("m4_waypoint3")
		
		Game.SetVehicleAIParams("cSedan", 50, 51)
		Game.SetStageAIRaceCatchupParams("cSedan", 80, 0.9, 1.1, 2.2) 
		
		Game.AddObjective("follow","neither")
			Game.SetObjTargetVehicle("cSedan")
		Game.CloseObjective()
		
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, ({145,90})[Difficulty.Current])
			Game.SetCondTargetVehicle("cSedan")
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("bsedan_v")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({90,30})[Difficulty.Current])
		
		Game.ActivateVehicle("cSedan","NULL","chase")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("cSedan")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("observ")
		Game.SetStageMessageIndex(5)
		Game.SetMaxTraffic(({2,5})[Difficulty.Current])
		if not Difficulty.IsNormal then
			Game.SetStageTime(50)
		end
		
		Game.AddObjective("goto","neither")
			Game.SetDestination("m4_observatory","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("comic")
		Game.SetStageMessageIndex(6)
		Game.SetStageTime(({70,40})[Difficulty.Current])
		
		Game.AddStageVehicle("cSedan2","m4_cSedan2_carstart","NULL","missions\\l3m4\\cSedan2".. tostring(Difficulty.Current) .. ".con")
		
		Game.AddObjective("delivery")
			local HellfishOnlyItems = {[6] = true}
			for i = 1, 12, 1 do
				if Difficulty.IsHellfish or not HellfishOnlyItems[i] then
					Game.AddCollectible("m4_comic_is" .. tostring(i), "comic_is")
				end
			end
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("bsedan_v")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({120,135})[Difficulty.Current])
		
		Game.ActivateVehicle("cSedan2","NULL","target")
		Game.AddStageWaypoint("m4_waypoint4")
		Game.AddStageWaypoint("m4_waypoint5")
		Game.AddStageWaypoint("m4_waypoint6")
		Game.AddStageWaypoint("m4_waypoint7")
		Game.AddStageWaypoint("m4_waypoint8")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("cSedan2")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0) --Game.RESET_TO_HERE() -- Used to test the new way I get rid of Grampa.
		Game.SetHUDIcon("gasoline")
		Game.SetStageMessageIndex(8)
		
		Game.AddObjective("goto")
			Game.SetDestination("m4_gasstation","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m4_grampa_hide")
		Game.SetSwapForcedCarLocator("m4_current_park")
		Game.SetSwapPlayerLocator("m4_lisa_out")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("bart")
		Game.SetStageMessageIndex(9)
		
		Game.AddStageVehicle("honor_v","m4_honor_v_carstart","NULL","missions\\l3m4\\cSedan11.con")
		Game.AddStageVehicle("cKan","m4_cKan_easteregg","NULL","missions\\l3m4\\cSedan11.con")
		
		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m4_bart_carsphere","triggersphere")
			Game.SetCollectibleEffect("wrench_collect")
			Game.MustActionTrigger()
		Game.CloseObjective()
		
		Game.SetFadeOut(0.1)
	Game.CloseStage()

	Game.AddStage(1) -- Stay in black stage.
		Game.AddStageCharacter("lisa","m4_lisa_check","","current","m4_grampa_hide") --Change that 4th value back to current if this fails.
		
		Game.AddObjective("timer")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("gasoline")
		Game.SetStageMessageIndex(10)
		
		Game.AddObjective("goto")
			Game.SetDestination("m4_gasstation", "carsphere") 
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.SetStageMessageIndex(11)
		Game.AddObjective("timer")
			Game.SetDurationTime(3)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
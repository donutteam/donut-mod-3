Game.SelectMission("m4")
	Game.SetMissionResetPlayerInCar("m4_wiggu_v_carstart2")
	Game.SetDynaLoadData("l2z3.p3d;l2r2.p3d;l2r3.p3d;")
	Game.UsePedGroup(6)

	Game.InitLevelPlayerVehicle("wiggu_v","m4_wiggu_v_carstart2","OTHER")
	Game.SetForcedCar()

	Game.AddStage(1)
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("myst")
		Game.SetStageMessageIndex(4)
		Game.SetMaxTraffic(({2,5})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.AddStageCharacter("bart","NULL","","wiggu_v","m4_wiggu_v_carstart2")
		
		Game.AddStageVehicle("bbman_v","m4_bbman_v_carstart","NULL","missions\\l2m4\\bbman_v" .. tostring(Difficulty.Current) .. ".con","beeman")
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m4_criminal","carsphere")
			Game.AddNPC("wiggum","m4_wiggum_hide")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("bbman_v")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({90,80})[Difficulty.Current])
		Game.SetMaxTraffic(({2,5})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.ActivateVehicle("bbman_v","NULL","target")
		Game.SetVehicleAIParams("bbman_v",-10,-9)
		
		Game.AddStageWaypoint("m4_criminal_waypoint1")
		Game.AddStageWaypoint("m4_criminal_waypoint2")
		Game.AddStageWaypoint("m4_criminal_waypoint3")
		Game.AddStageWaypoint("m4_criminal_waypoint4")
		
		Game.AddObjective("dump","neither")
			Game.SetObjTargetVehicle("bbman_v")
			
			local Items = {"krusty_meal","fireworks","icecream_tub","cooler","fish","pills_trucker","bloodbag","folder"}
			for i = 1, ({5,8})[Difficulty.Current], 1 do
				Game.AddCollectible("m4_criminal_item"..tostring(i),Items[math.random(#Items)])
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("highway")
		Game.SetStageMessageIndex(6)
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		Game.SetMaxTraffic(({2,5})[Difficulty.Current])
		
		Game.AddStageVehicle("snake_v","m4_snake_v_carstart","NULL", "missions\\l2m4\\snake_v" .. tostring(Difficulty.Current) .. ".con","snake")
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m4_criminal2","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("snake")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({150,120})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		Game.SetMaxTraffic(({3,5})[Difficulty.Current])
	
		Game.ActivateVehicle("snake_v","NULL","target")
		Game.SetVehicleAIParams("snake_v",50,51)
	
		Game.AddStageWaypoint("m4_criminal2_waypoint1")
		Game.AddStageWaypoint("m4_criminal2_waypoint2")
		Game.AddStageWaypoint("m4_criminal2_waypoint3")
		Game.AddStageWaypoint("m4_criminal2_waypoint4")
		
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("snake_v")
			Game.AddCollectible("m4_radio","radio")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("satellite")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("kburger")
		Game.SetStageMessageIndex(8)
		Game.SetMaxTraffic(({3,5})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
		end
		
		Game.AddStageVehicle("cletu_v","m4_cletu_v_end","NULL","missions\\l2m4\\cletu_v.con")
	
		Game.AddObjective("goto","both")
			Game.AddNPC("cletus","m4_cletus_end")
			Game.SetDestination("m4_kburger","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m4_bartcar_end")
		Game.SetSwapForcedCarLocator("m4_wiggu_v_hide")
		Game.SetSwapPlayerLocator("m4_bart_end")
	Game.CloseStage()
	
	Game.AddStage()
		Game.AddObjective("timer")
			Game.RemoveDriver("wiggum")
			Game.AddNPC("cletus","m4_cletus_end")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
		
		Game.SetCompletionDialog("yadda","wiggum")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetMaxTraffic(({3,5})[Difficulty.Current])
		Game.AddStageVehicle("cPolice","m4_cpolice_kb","NULL","missions\\l2m4\\end_v.con","wiggum")
		Game.AddObjective("timer")
			Game.AddNPC("cletus","m4_cletus_end")
			Game.SetDurationTime(2)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.SetMaxTraffic(({3,5})[Difficulty.Current])
		
		Game.ActivateVehicle("cPolice","NULL","evade")
		Game.AddStageWaypoint("m4_cpolice_driveaway")
		
		Game.AddObjective("timer")
			Game.AddNPC("cletus","m4_cletus_end")
			Game.SetDurationTime(2) 
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
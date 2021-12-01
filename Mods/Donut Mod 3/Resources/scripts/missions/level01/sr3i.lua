Game.SelectMission("sr3")
	Game.SetMissionResetPlayerInCar("sr3_rocke_v_carstart")
	Game.SetDynaLoadData("l1z7.p3d;l1r6.p3d;l1z6.p3d;")
	Game.UsePedGroup(5)
	Game.SetPresentationBitmap("art/banners/l1r3bnnr.p3d")

	Game.InitLevelPlayerVehicle("rocke_v","sr3_rocke_v_carstart","OTHER")
	Game.SetForcedCar()
	
	Game.AddStage(1)	Game.RESET_TO_HERE()
		Game.SetHUDIcon("rocke_v")
		Game.SetStageTime(({160,276})[Difficulty.Current]) 
		Game.SetStageMessageIndex(({1,2})[Difficulty.Current])
		
		if Difficulty.IsNormal then
			Game.DisableHitAndRun()
			Game.NoTrafficForStage()
		end
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("1",1000)
			Game.AddToCountdownSequence("1",1000)
			Game.AddToCountdownSequence("1",900)
			Game.AddToCountdownSequence("GO",400)
			
		Game.AddObjective("race","neither")
			for i = 1, 6, 1 do
				Game.AddCollectible("sr3_waypoint" .. tostring(i), "carsphere")
			end
			Game.SetRaceLaps(({1,2})[Difficulty.Current])
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(({10000,0})[Difficulty.Current])	-- No wrenches for you hellfish players.
		Game.CloseCondition()
		
		Game.SetFadeOut(1.0)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("sr3_current_end")
		Game.SetSwapForcedCarLocator("sr3_rocke_v_end")
		Game.SetSwapPlayerLocator("sr3_homer_end")
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty","sr3_patty_success")
			Game.AddNPC("selma","sr3_selma_success")
			Game.SetDialogueInfo("patty","homer","success",0)
			Game.SetDialoguePositions("sr3_patty_success","sr3_homer_success","sr3_rocke_v_hide")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
Game.SelectMission("sr1")
	Game.SetMissionResetPlayerInCar("sr1_carstart")
	Game.SetDynaLoadData("l2z1.p3d;l2r1.p3d;l2r4.p3d;")
	Game.UsePedGroup(5)
	
	Game.StreetRacePropsLoad("l2sr1.p3d;")
	Game.StreetRacePropsUnload("l2sr1.p3d:")
	
	Game.AddStage()
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("clfamily")
		Game.SetStageMessageIndex(1)
		
		Game.AddStageCharacter("bart","NULL","","current", "sr1_carstart")
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3",1200)
			Game.AddToCountdownSequence("2",1000)
			Game.AddToCountdownSequence("1",1000)
			Game.AddToCountdownSequence("GO",400)
		
		Game.AddStageVehicle("clfamily","sr1_clfamily_carstart","NULL","missions\\l2sr1\\clfamily.con","homer")

		Game.AddObjective("timer")
			Game.SetDurationTime(4)
		Game.CloseObjective()
		Game.SetCompletionDialog("boy","homer")
	Game.CloseStage()
	
	Game.AddStage()
		--Game.RESET_TO_HERE()
			
		--Game.AddStageCharacter("bart","NULL","","current", "carstart")
		
		-- Every Stage
		Game.SetHUDIcon("clfamily")
		
		Game.SetStageMessageIndex(1)
		
		Game.SetStageTime(({120,60})[Difficulty.Current])

		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.ActivateVehicle("clfamily","NULL","chase")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("clfamily")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("doover","homer")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("skinn_v")
		
		Game.SetStageMessageIndex(2)
		
		Game.SetStageTime(({120,60})[Difficulty.Current])
		
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle("skinn_v","sr1_skinn_v_carstart","chase","missions\\l2sr1\\skinn_v.con","skinner")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("skinn_v")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("elect_v")
		
		Game.SetStageMessageIndex(3)
		
		Game.SetStageTime(({120,60})[Difficulty.Current])
		
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle("elect_v","sr1_elect_v_carstart","chase","missions\\l2sr1\\elect_v.con","lisa")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("elect_v")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	--  (ง ͠° ͟ل͜ ͡°)ง
	
	Game.AddStage()
		Game.SetHUDIcon("krusty_v")
		
		Game.SetStageMessageIndex(4)
		
		Game.SetStageTime(({140,80})[Difficulty.Current])
		
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle("cKlimo","sr1_elect_v_carstart","chase","missions\\l2sr1\\krust_v.con","krusty")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("cKlimo")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		if Difficulty.IsNormal then
			Game.SetFadeOut(0.1)
		else
			Game.ShowStageComplete()
		end
	Game.CloseStage()
	
	if Difficulty.IsHellfish then
		Game.AddStage()
			Game.SetHUDIcon("otto_v")
			
			Game.SetStageMessageIndex(5)
			
			Game.SetStageTime(90)
			
			Game.DisableHitAndRun()
			Game.NoTrafficForStage()
				
			Game.AddStageVehicle("otto_v","sr1_otto_v_carstart","chase","missions\\l2sr1\\otto_v.con","otto")
			
			Game.AddObjective("destroy","neither")
				Game.SetObjTargetVehicle("otto_v")
			Game.CloseObjective()
			
			Game.AddCondition("timeout")	Game.CloseCondition()
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			
			Game.SetFadeOut(0.1)
		Game.CloseStage()
	end

	Game.AddStage()
		Game.SetMaxTraffic(5)
	
		Game.AddObjective("timer")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty","sr1_patty")
			Game.AddNPC("selma","sr1_selma")
			Game.SetDialogueInfo("patty","bart","success",0)
			Game.SetDialoguePositions("sr1_patty","sr1_bart_end","sr1_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
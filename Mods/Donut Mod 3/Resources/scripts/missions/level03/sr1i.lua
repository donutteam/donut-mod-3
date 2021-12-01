Game.SelectMission("sr1")
	Game.SetMissionResetPlayerInCar("sr1_carstart")
	Game.SetDynaLoadData("l3z2.p3d;l3r2.p3d;l3r1.p3d;")
	Game.UsePedGroup(5)


	Game.AddStage()	Game.RESET_TO_HERE()
		Game.SetHUDIcon("cNerd")
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(({85,60})[Difficulty.Current])
		Game.DisableHitAndRun()
		Game.NoTrafficForStage() 
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3",1500)
			Game.AddToCountdownSequence("2",900)
			Game.AddToCountdownSequence("GO",400)
			
		Game.AddStageCharacter("lisa","NULL","","current", "sr1_carstart")
		
		Game.AddStageVehicle("cNerd","sr1_mahltew","chase","missions\\l3sr1\\cNerd" .. tostring(Difficulty.Current) .. ".con","male2")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("cNerd")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("moe_v")
		Game.SetStageMessageIndex(2)
		Game.SetStageTime(({120,90})[Difficulty.Current])
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle("moe_v","sr1_moe","chase","missions\\l3sr1\\moe_v" .. tostring(Difficulty.Current) .. ".con","moe")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("moe_v")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("knigh_v")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({180,120})[Difficulty.Current])
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle("knigh_v","sr1_krusty","chase","missions\\l3sr1\\knigh_v" .. tostring(Difficulty.Current) .. ".con","captain")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("knigh_v")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("ironman")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({240,110})[Difficulty.Current])
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle("ironman","sr1_otto","chase","missions\\l3sr1\\ironman" .. tostring(Difficulty.Current) .. ".con","frink")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("ironman")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		if Difficulty.IsNormal then
			Game.SetFadeOut(0.1)
		else
			Game.ShowStageComplete()
		end
	Game.CloseStage()

	if Difficulty.IsHellfish then
		Game.AddStage()
			-- Every Stage
			Game.SetHUDIcon("cletu_vB")
			Game.SetStageMessageIndex(5)
			Game.SetStageTime(70)
			Game.DisableHitAndRun()
			Game.NoTrafficForStage()
				
			Game.AddStageVehicle("cletu_vB","sr1_bonus","chase","missions\\l3sr1\\cletu_vB" .. tostring(Difficulty.Current) .. ".con","male2")
			
			Game.AddObjective("destroy","neither")
				Game.SetObjTargetVehicle("cletu_vB")
			Game.CloseObjective()
			
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			Game.AddCondition("timeout") Game.CloseCondition()
			
			Game.SetFadeOut(0.1)
		Game.CloseStage()
	end

	Game.AddStage(1,"final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty", "sr1_patty")
			Game.AddNPC("selma", "sr1_selma")
			Game.SetDialogueInfo("patty","lisa","success",0)
			Game.SetDialoguePositions("sr1_patty","sr1_lisa_end","sr1_car_end")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
Game.SelectMission("bm1")
	Game.SetMissionResetPlayerInCar("bm1_cletu_v_carstart")
	Game.SetDynaLoadData("l1z7.p3d;l1r6.p3d;l1r7.p3d;")
	Game.UsePedGroup(5)

	Game.InitLevelPlayerVehicle("cletu_v","bm1_cletu_v_carstart","OTHER") Game.SetForcedCar()
	
	Game.AddStage(1) Game.RESET_TO_HERE()
		Game.SetHUDIcon("tamacco")
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(({60,25})[Difficulty.Current])
		if Difficulty.IsNormal then
		Game.SetMaxTraffic(2)
		end
		
		Game.AddObjective("goto")
			Game.AddNPC("cletus","bm1_cletus_hide")
			Game.SetDestination("bm1_tommacofield","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage(2)
		Game.SetHUDIcon("tamacco")
		Game.SetStageMessageIndex(2)
		Game.SetStageTime(({50,25})[Difficulty.Current])
		if Difficulty.IsNormal then
		Game.SetMaxTraffic(2)
		end
		
		Game.DisableHitAndRun()
		
		Game.AddObjective("delivery")
			for i = 1, 12, 1 do
				Game.AddCollectible("bm1_tomacco" .. tostring(i), "tomacco")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("okay","cletus")
	Game.CloseStage()
	
	Game.AddStage(3)
		Game.SetHUDIcon("cardboar")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({110,60})[Difficulty.Current])
		if Difficulty.IsNormal then
		Game.SetMaxTraffic(2)
		end
		
		Game.EnableHitAndRun()
		
		Game.AddObjective("delivery")
			Game.AddCollectible("bm1_cardboard_tubes1","cardboard_tubes")
			Game.AddCollectible("bm1_cardboard_tubes2","cardboard_tubes")
			Game.AddCollectible("bm1_cardboard_tubes3","cardboard_tubes")
			Game.AddCollectible("bm1_cardboard_tubes5","cardboard_tubes")
			
			if Difficulty.IsHellfish then
				Game.AddCollectible("bm1_cardboard_tubes6","cardboard_tubes")
				Game.AddCollectible("bm1_cardboard_tubes7","cardboard_tubes")
				Game.AddCollectible("bm1_cardboard_tubes8","cardboard_tubes")
				Game.AddCollectible("bm1_cardboard_tubes9","cardboard_tubes")
			end
			
			if Difficulty.IsNormal then
				Game.AddCollectible("bm1_cardboard_tubes10","cardboard_tubes")
				Game.AddCollectible("bm1_cardboard_tubes11","cardboard_tubes")
				Game.AddCollectible("bm1_cardboard_tubes12","cardboard_tubes")
			end
			
			Game.AddCollectible("bm1_cardboard_tubes13","cardboard_tubes")
			Game.AddCollectible("bm1_cardboard_tubes14","cardboard_tubes")
			Game.AddCollectible("bm1_cardboard_tubes15","cardboard_tubes")
			Game.AddCollectible("bm1_cardboard_tubes16","cardboard_tubes")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("boring","cletus")
	Game.CloseStage()
	
	Game.AddStage(4)
		Game.SetHUDIcon("flatmeat")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({120, 70})[Difficulty.Current])
		Game.SetMaxTraffic(3)
		
		Game.AddStageVehicle("firebird","bm1_firebird_carstart","NULL","missions\\l1bm1\\firebird.con","apu")
		
		Game.AddObjective("delivery")
			for i = 1, 14, 1 do
				Game.AddCollectible("bm1_roadkill" .. tostring(i),"roadkill")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("cityfolk","cletus")
	Game.CloseStage()
	
	Game.AddStage(5)
		Game.SetHUDIcon("firebird")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({80,50})[Difficulty.Current])
		Game.SetMaxTraffic(5)
		
		Game.ActivateVehicle("firebird","NULL","chase")
		
		Game.AddObjective("losetail","neither")
			Game.SetObjTargetVehicle("firebird")
			Game.SetObjDistance(({150,225})[Difficulty.Current])
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(0)
		Game.CloseCondition()
		
		Game.SetCompletionDialog("heehee","homer")
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(6)
		Game.SetHUDIcon("cletushs")
		Game.SetStageMessageIndex(6)
		--Game.AddStageTime(({30,-1})[Difficulty.Current])
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("goto")
			Game.SetDestination("bm1_cletushouse","carsphere")
		Game.CloseObjective()
		
		--Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("bm1_current_end")
		Game.SetSwapForcedCarLocator("bm1_cletu_v_end")
		Game.SetSwapPlayerLocator("bm1_homer_end")
	Game.CloseStage()
	
	Game.AddStage()
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage("final")	
		Game.AddObjective("dialogue")
			Game.AddNPC("cletus","bm1_cletus_end")
			Game.SetDialogueInfo("homer","cletus","cityboy",0)
			Game.SetDialoguePositions("bm1_homer_cityboy","bm1_cletus_cityboy","bm1_cletu_v_cityboy")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
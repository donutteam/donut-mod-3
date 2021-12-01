Game.SelectMission("sr1")
	Game.SetMissionResetPlayerInCar("sr1_current_carstart")
	Game.SetDynaLoadData("l1z7.p3d;l1r7.p3d;l1r6.p3d;")
	Game.UsePedGroup(5)
	
	Game.StreetRacePropsLoad("l1_sr1p.p3d;")
	Game.StreetRacePropsUnload("l1_sr1p.p3d:")
	
	Game.SetAnimatedCameraName("race1camShape")
	Game.SetAnimCamMulticontName("race1cam")
	
	Game.AddStage()	Game.RESET_TO_HERE()		
		Game.SetHUDIcon("cDuff")
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(({110,35})[Difficulty.Current])
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3",1500)
			Game.AddToCountdownSequence("2",900)
			Game.AddToCountdownSequence("1",1000)
			Game.AddToCountdownSequence("GO",400)
			
		Game.AddStageCharacter("homer","NULL","","current", "sr1_current_carstart")

		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle("cDuff","sr1_cDuff_carstart","chase","missions\\l1sr1\\cDuff".. tostring(Difficulty.Current) .. ".con","moleman")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("cDuff")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon(Car2Info[1])
		Game.SetStageMessageIndex(Car2Info[2])
		Game.SetStageTime(({100,45})[Difficulty.Current])

		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle(Car2Info[1], "sr1_cBone_carstart","chase","missions\\l1sr1\\cBone".. tostring(Difficulty.Current) .. ".con","jimbo")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle(Car2Info[1])
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon(Car3Info[1])
		Game.SetStageMessageIndex(Car3Info[2])
		Game.SetStageTime(({80,50})[Difficulty.Current])

		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
			
		Game.AddStageVehicle(Car3Info[1],"sr1_glastruc_carstart","chase","missions\\l1sr1\\glastruc".. tostring(Difficulty.Current) ..".con","kearney")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle(Car3Info[1])
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		
		if Difficulty.IsNormal then
			Game.SetCompletionDialog("homie","marge")
		else
			Game.SetCompletionDialog("remember","barney")
		end
	Game.CloseStage()
	
	if Difficulty.IsNormal then
		Game.AddStage()
			Game.SetHUDIcon("mrplo_v")
			
			Game.SetStageMessageIndex(8)
			
			Game.SetStageTime(120)

			Game.DisableHitAndRun()
			Game.NoTrafficForStage()
				
			Game.AddStageVehicle("mrplo_v","sr1_plowk_v_carstart","chase","missions\\l1sr1\\mrplo_v.con","marge")
			
			Game.AddObjective("destroy","neither")
				Game.SetObjTargetVehicle("mrplo_v")
			Game.CloseObjective()
			
			Game.AddCondition("timeout")	Game.CloseCondition()
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			
			Game.SetFadeOut(0.1)
		Game.CloseStage()
	else		
		Game.AddStage()
			Game.SetHUDIcon("plowk_v")
			
			Game.SetStageMessageIndex(4)
			
			Game.SetStageTime(75)

			Game.DisableHitAndRun()
			Game.NoTrafficForStage()
				
			Game.AddStageVehicle("plowk_v","sr1_plowk_v_carstart","chase","missions\\l1sr1\\plowk_v.con", ({"barney","brn_unf"})[math.random(1,2)])
			
			Game.AddObjective("destroy","neither")
				Game.SetObjTargetVehicle("plowk_v")
			Game.CloseObjective()
			
			Game.AddCondition("timeout")	Game.CloseCondition()
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			
			Game.ShowStageComplete()
		Game.CloseStage()
		
		Game.AddStage()
			Game.SetHUDIcon("cletus_v")
			
			Game.SetStageMessageIndex(5)
			
			Game.SetStageTime(70)
			Game.AddCondition("timeout")	Game.CloseCondition()

			Game.DisableHitAndRun()
			Game.NoTrafficForStage()
				
			Game.AddStageVehicle("cletu_v","sr1_cletu_v_carstart","chase","missions\\l1sr1\\cletus_v.con","rednk1")
			
			Game.AddObjective("destroy","neither")
				Game.SetObjTargetVehicle("cletu_v")
			Game.CloseObjective()
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			
			Game.SetFadeOut(0.1)
		Game.CloseStage()
	end
	
	Game.AddStage()		
		Game.AddObjective("timer")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty","patty_victory")
			Game.AddNPC("selma","selma_victory")
			Game.SetDialogueInfo("patty","homer","success",0)
			Game.SetDialoguePositions("sr1_patty_victory","sr1_homer_victory","sr1_current_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
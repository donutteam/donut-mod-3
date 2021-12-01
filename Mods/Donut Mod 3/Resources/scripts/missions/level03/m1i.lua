Game.SelectMission("m1")
	Game.SetMissionResetPlayerInCar("m1_comic_v_carstart")
	Game.SetDynaLoadData("l3z1.p3d;l3r1.p3d;l3r5.p3d;l3r5_dam.p3d;")
	Game.UsePedGroup(0)
	Game.SetNumValidFailureHints(5)
	
	Game.InitLevelPlayerVehicle("comic_v","m1_comic_v_carstart","OTHER")
	Game.SetForcedCar()

	Game.AddStage(0) Game.RESET_TO_HERE() -- Drive to the Itchy & Scratchy Comic Book Shop.
		Game.SetHUDIcon("itcstore")
		Game.SetStageMessageIndex(3) 
		Game.SetStageTime(({70,35})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.SetMaxTraffic(2)
		end
		
		Game.AddStageVehicle("cNerdB","m1_cNerdB_carstart","NULL","missions\\l3m1\\cNerdB.con","male2")
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("cNerdG","m1_cNerdG_carstart","NULL","missions\\l3m1\\cNerdG.con","male2") 
		end
		
		Game.AddObjective("goto")
			Game.SetDestination("m1_comicshop", "carsphere") -- previous Y coordinate -32.10254
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(1) -- Reached the Comic Book Shop, talking to the nerd.
		Game.SetHUDIcon("male2")
		Game.SetStageMessageIndex(4)
		
		Game.AddObjective("talkto")
			Game.AddNPC("mahltew","m1_mahltew_start")
			Game.SetTalkToTarget("mahltew",0,0)
		Game.CloseObjective()
		Game.SetFadeOut(0.1)
	Game.CloseStage()
	
	Game.AddStage(0) --Getting into your vehicle to start the race.
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(5)
		if not Difficulty.IsNormal then
			Game.SetStageTime(15)
		end
		
		Game.AddStageCharacter("lisa","m1_lisa_race","","comic_v","m1_comic_v_race")
		
		Game.AddStageVehicle("cNerdB","m1_cNerdB_race","NULL","missions\\l3m1\\cNerdB.con", "male2") 
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("cNerdG","m1_cNerdG_race","NULL","missions\\l3m1\\cNerdG.con", "male2") 
			Game.AddStageVehicle("cNerdO","m1_cNerdO_race","NULL","missions\\l3m1\\cNerdO.con", "male2")
		end
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()

	Game.AddStage(0) -- The race itself.
		Game.SetHUDIcon("racenerd")
		Game.SetStageMessageIndex(({13,6})[Difficulty.Current])
		Game.SetMaxTraffic(2)
		
		Game.StartCountdown("count")
			Game.AddToCountdownSequence("3",1500) 
			Game.AddToCountdownSequence("2",900) 
			Game.AddToCountdownSequence("1",1000) 
			Game.AddToCountdownSequence("GO",400) 
		
		Game.ActivateVehicle("cNerdB","NULL","race")	
		if Difficulty.IsHellfish then
			Game.ActivateVehicle("cNerdG","NULL","race")
			Game.ActivateVehicle("cNerdO","NULL","race")
			
			Game.SetStageAIRaceCatchupParams("cNerdB", 80, 1, 1.25, 2.5)
			Game.SetVehicleAIParams("cNerdB", 50, 51)
			Game.SetStageAIRaceCatchupParams("cNerdO",80,1,1.25,2.5) 
			Game.SetVehicleAIParams("cNerdO", 50, 51)
		end
		
		local ExcludedPlayerWaypoints = {
			[8] = true,
		}
		
		for i = 1, 14, 1 do
			if not ExcludedPlayerWaypoints[i] then
				Game.AddStageWaypoint("m1_waypoint" .. tostring(i))
			end
		end
		
		Game.AddObjective("race","neither")
			for i = 1, 14, 1 do
				Game.AddCollectible("m1_waypoint" .. tostring(i), "carsphere")
			end
			Game.SetRaceLaps(2)
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("position")
			Game.SetConditionPosition(1)
		Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
	Game.CloseStage()

	Game.AddStage(0) --Setting up the scene for taking the comic book.
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
			Game.AddStageCharacter("lisa","m1_lisa_win","","current","m1_comic_v_win")		
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)  --Talking to the nerd to get the comic.
		Game.SetHUDIcon("male2")
		Game.SetStageMessageIndex(7)
		
		Game.AddObjective("talkto")
			Game.AddNPC("mahltew","m1_mahltew_lose")
			Game.SetTalkToTarget("mahltew", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage() --The actual getting the comic stage.
		Game.SetHUDIcon("comic")
		Game.SetStageMessageIndex(8)
		
		Game.AddObjective("goto","neither")
			Game.SetDestination("m1_comic_is","comic_is")
		Game.CloseObjective()
		
		Game.ShowStageComplete()
	Game.CloseStage()
		
	Game.AddStage(0) -- Getting back into your car stage.
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(9)
		if not Difficulty.IsNormal then
			Game.SetStageTime(15)
		end
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if Difficulty.IsHellfish then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
		Game.SetCompletionDialog("nuisance","cbg")
	Game.CloseStage()

	Game.AddStage(0) -- Driving back to the Android's Dungeon.
		Game.SetHUDIcon("android")
		Game.SetStageMessageIndex(10)
		Game.SetStageTime(({75,40})[Difficulty.Current])
		
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("cNerd","m1_cNerd_carstart","NULL","missions\\l3m1\\cNerd.con","male2") 
		end
		
		Game.AddObjective("goto")
			Game.SetDestination("m1_android","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
			Game.TurnGotoDialogOff()
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		Game.AddCondition("timeout") Game.CloseCondition()
		
		if Difficulty.IsNormal then
			Game.SetFadeOut(0.1)
			
			Game.SwapInDefaultCar()
			Game.SetSwapDefaultCarLocator("m1_current_end")
			Game.SetSwapForcedCarLocator("m1_comic_v_end")
			Game.SetSwapPlayerLocator("m1_lisa_end")
		end
	Game.CloseStage()

	if Difficulty.IsHellfish then
		Game.AddStage(0) -- The nerd returns!
			Game.SetHUDIcon("cNerd")
			Game.SetStageMessageIndex(11)
			Game.SetStageTime(45)
			
			Game.ActivateVehicle("cNerd","NULL","chase")
			Game.AddObjective("losetail")
				Game.SetObjTargetVehicle("cNerd")
				Game.SetObjDistance(190)
			Game.CloseObjective()
			
			Game.AddCondition("timeout") Game.CloseCondition()
			
			Game.AddCondition("outofvehicle")
				Game.SetCondTime( 10000 )
			Game.CloseCondition()
			
			Game.CloseCondition()
			Game.ShowStageComplete()
		Game.CloseStage()

		Game.AddStage(0) -- Getting back to the Dungeon again.
			Game.SetHUDIcon("android")
			Game.SetStageMessageIndex(12)
			Game.SetStageTime(50)
			
			Game.AddObjective("goto")
				Game.SetDestination("m1_android","carsphere")
				Game.SetCollectibleEffect("wrench_collect")
				Game.TurnGotoDialogOff()
			Game.CloseObjective()
			
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			Game.AddCondition("timeout") Game.CloseCondition()
			
			Game.SetFadeOut(0.1)
			Game.SwapInDefaultCar()
			Game.SetSwapDefaultCarLocator("m1_current_end")
			Game.SetSwapForcedCarLocator("m1_comic_v_end")
			Game.SetSwapPlayerLocator("m1_lisa_end")
		Game.CloseStage()
	end

	Game.AddStage("final") -- Dialog stage.
		Game.AddObjective("dialogue")
			Game.AddNPC("cbg","m1_cbg_end")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_hands_in_air")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("m1_bestside")
			Game.SetDialogueInfo("lisa","cbg","mylar",0)
			Game.SetDialoguePositions("m1_lisa_end","m1_cbg_end","m1_current_end")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
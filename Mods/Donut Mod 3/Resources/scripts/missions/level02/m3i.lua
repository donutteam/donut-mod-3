Game.SelectMission("m3")
	Game.SetMissionResetPlayerInCar("m3_comic_v_carstart")
	Game.SetDynaLoadData("l2z4.p3d;l2r3.p3d;l2r4.p3d;")
	Game.UsePedGroup(5)
	Game.SetNumValidFailureHints(5)

	Game.InitLevelPlayerVehicle("comic_v","m3_comic_v_carstart","OTHER")
	Game.SetForcedCar()

	Game.AddStage(1)	Game.RESET_TO_HERE() --1. Destroy the Nerd's car before he reaches the Java Server 
		Game.SetHUDIcon("cNerd")
		Game.SetStageMessageIndex(3)
		Game.SetMaxTraffic(({2,3,4})[Difficulty.Current])

		Game.StartCountdown("count")
		
		Game.AddStageVehicle("cNerd","m3_cNerd_carstart","target","missions\\l2m3\\cNerd" .. tostring(Difficulty.Current) .. ".con","male2") 
		Game.SetStageAIRaceCatchupParams("cNerd",80,0.8,1.5,2.3)

		Game.AddStageWaypoint("m3_cNerd_waypoint1")
		Game.AddStageWaypoint("m3_cNerd_waypoint2")
		
		Game.AddObjective("destroy","neither")
			Game.AddNPC("cbg","m3_cbg_hide")
			Game.SetObjTargetVehicle("cNerd")
		Game.CloseObjective()
		
		Game.AddCondition("race")
			Game.SetCondTargetVehicle("cNerd")
		Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		-- Note to Loren: This is here so if the player resets in the stage where they follow Frink, it switches back to the CBG's theme rather than playing Frink's theme. - Kenny
		Game.StageStartMusicEvent("M3_start")
		Game.ShowStageComplete()
		Game.SetCompletionDialog("defeat","cbg")
	Game.CloseStage()

	Game.AddStage(2) --2. Drive to the Java Server after the Nerd's Car is destroyed 
		Game.SetHUDIcon("java")
		Game.SetStageMessageIndex(4)
		
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil,55,50})[Difficulty.Current])
		end
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m3_javaserver2","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
		Game.SetFadeOut(0.1)
	Game.CloseStage()

	Game.AddStage(3) --3. Causes the player to teleport outside of the Kremilin and talk to CBG 
		Game.AddObjective("timer")
			Game.AddNPC("cbg","m3_cbg_javaserver")
			-- Game.AddStageCharacter("bart","m3_bart_java","","comic_v","m3_comic_v_java")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage() --4. CBG dialogue stage 
		Game.AddObjective("dialogue")
			Game.AddNPC("cbg","m3_cbg_javaserver")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_far")
			Game.SetConversationCam(1,"pc_far")
			Game.SetConversationCam(2,"npc_far")
			Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_thinking")
			Game.AddAmbientPcAnimation("dialogue_no")
			Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture")
			Game.SetDialogueInfo("bart","cbg","futile",0)
			Game.SetDialoguePositions("m3_bart_futile","m3_cbg_futile","m3_comic_v_futile",1)
		Game.CloseObjective()
		
		Game.SetFadeOut(0.1)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m3_comic_v_carstart2")
		Game.SetSwapForcedCarLocator("m3_comic_v_javaserver")
		Game.SetSwapPlayerLocator("m3_bart_java")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 20, 10})[Difficulty.Current])
		end
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()
	
	local Items = {"bloodbag","fish","lasergun","monkey","tomacco"}	-- Used in the next couple stages
	Game.AddStage() --4. Collect the items to find Prof. Frink
		Game.SetHUDIcon("frink")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({60,40,40})[Difficulty.Current])
		Game.SetMaxTraffic(({2,4,4})[Difficulty.Current])
		
		--Game.AddStageCharacter("bart","NULL","","comic_v","m3_comic_v_carstart2")
		Game.AddStageVehicle("ironman","m3_frink_v_carstart","NULL","missions\\l2m3\\frink_v" .. tostring(Difficulty.Current) .. ".con","frink")
		
		Game.AddObjective("delivery")
			for i = 1, 12, 1 do
				Game.AddCollectible("m3_item" .. tostring(i), Items[math.random(#Items)])
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage() --5. Follow Prof. Frink and collect the items he drops 
		Game.SetHUDIcon("frink")
		Game.SetStageMessageIndex(({6,7,7})[Difficulty.Current])

		Game.ActivateVehicle("ironman","NULL","evade") 
		Game.SetVehicleAIParams("ironman", 45, 51) --Somebody forgot to change these AIParams!
		
		Game.AddStageWaypoint("m3_frink_v_waypoint1")
		Game.AddStageWaypoint("m3_frink_v_waypoint2")
		Game.AddStageWaypoint("m3_frink_v_waypoint3")
		Game.AddStageWaypoint("m3_frink_v_waypoint4")
		Game.AddStageWaypoint("m3_frink_v_waypoint5")	-- No Item
		Game.AddStageWaypoint("m3_frink_v_waypoint6")
		Game.AddStageWaypoint("m3_frink_v_waypoint7")
		Game.AddStageWaypoint("m3_frink_v_waypoint8")
		Game.AddStageWaypoint("m3_frink_v_waypoint9")
		
		if Difficulty.IsNormal then
			Game.AddObjective("follow","neither")
				Game.SetObjTargetVehicle("ironman")
			Game.CloseObjective()
		else
			Game.AddObjective("dump")
				Game.SetObjTargetVehicle("ironman")
				Game.AddCollectible("m3_frink_v_item1",Items[math.random(#Items)]) Game.BindCollectibleTo(0,0)
				Game.AddCollectible("m3_frink_v_item2",Items[math.random(#Items)]) Game.BindCollectibleTo(1,1)
				Game.AddCollectible("m3_frink_v_item3",Items[math.random(#Items)]) Game.BindCollectibleTo(2,2)
				Game.AddCollectible("m3_frink_v_item4",Items[math.random(#Items)]) Game.BindCollectibleTo(3,3)
				Game.AddCollectible("m3_frink_v_item5",Items[math.random(#Items)]) Game.BindCollectibleTo(4,5)
				Game.AddCollectible("m3_frink_v_item6",Items[math.random(#Items)]) Game.BindCollectibleTo(5,6)
				Game.AddCollectible("m3_frink_v_item7",Items[math.random(#Items)]) Game.BindCollectibleTo(6,7)
				Game.AddCollectible("m3_frink_v_item8",Items[math.random(#Items)]) Game.BindCollectibleTo(7,8)
			Game.CloseObjective()
		end
		
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0,({150,150,150})[Difficulty.Current])
			Game.SetCondTargetVehicle("ironman")
		Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
		Game.StageStartMusicEvent("M7_start")
	Game.CloseStage()

	Game.AddStage("final") --6. Timer stage that removes the player from their car 
		Game.AddStageVehicle("ironman","m3_frink_v_end","NULL","missions\\l2m3\\frink_v" .. tostring(Difficulty.Current) .. ".con")
		
		Game.AddObjective("timer")
			Game.RemoveDriver("frink")
			Game.AddNPC("frink","m3_frink_end")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()

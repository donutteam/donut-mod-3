Game.SelectMission("m3")
	Game.SetMissionResetPlayerInCar("m3_firebird_carstart")
	Game.SetDynaLoadData("l3z1.p3d;l3r1.p3d;l3r5.p3d;l3r5_dam.p3d;")
	Game.UsePedGroup(0)
	Game.SetNumValidFailureHints(5)
	
	Game.InitLevelPlayerVehicle("firebird","m3_firebird_carstart","OTHER")
	Game.SetForcedCar()

	Game.AddStage(16) Game.RESET_TO_HERE()
		Game.SetHUDIcon("flatmeat")
		Game.SetStageMessageIndex(2)
		Game.SetStageTime(({85,40})[Difficulty.Current])
		Game.SetMaxTraffic(3)
		
		Game.AddStageVehicle("cletu_v","m3_cletu_v_carstart","NULL","missions\\l3m3\\cletu_v.con","cletus")
		Game.AddStageVehicle("cletu_vB","m3_cletu_vB_carstart","NULL","missions\\l3m3\\cletu_vB" .. tostring(Difficulty.Current) .. ".con","male2")

		Game.StartCountdown("count")
			--Game.AddToCountdownSequence("3",1000) 
			--Game.AddToCountdownSequence("2",1000) 
			--Game.AddToCountdownSequence("1",1000) 
			--Game.AddToCountdownSequence("GO",400) 
		
		Game.AddObjective("delivery")
			Game.AddNPC("apu","m3_apu_hide")
			for i = 1, 17, 1 do
				Game.AddCollectible("m3_roadkill"..tostring(i), "roadkill")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()


	Game.AddStage()
		Game.SetHUDIcon("cletus_v")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({120,55})[Difficulty.Current])
		
		Game.ActivateVehicle("cletu_v","NULL","target")
		Game.SetVehicleAIParams("cletu_v",0,1)
		
		Game.AddStageWaypoint("m3_waypoint1")
		Game.AddStageWaypoint("m3_waypoint2")
		Game.AddStageWaypoint("m3_waypoint3")
		
		Game.AddStageVehicle("cletu_vB","m3_cletu_vB_carstart2","NULL","cletu_vB" .. tostring(Difficulty.Current) .. ".con","male2")
		
		Game.AddObjective("dump", "neither")
			Game.SetObjTargetVehicle("cletu_v")
			for i = 18, 27, 1 do
				Game.AddCollectible("m3_roadkill" .. tostring(i),"roadkill")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime( 10000 )
		Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("kburger")
		Game.SetStageMessageIndex(4)
		if not Difficulty.IsNormal then
			Game.SetStageTime(25)
		end
		
		Game.AddStageVehicle("cletu_vB","m3_cletu_vB_carstart3","NULL","cletu_vB".. tostring(Difficulty.Current) .. ".con","male2")
		
		Game.AddObjective("goto")
			Game.SetDestination ("m3_krustyburger", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseObjective()

	Game.AddStage() -- This will probably crash the game ATM.
		Game.SetHUDIcon("cletu_vB")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({70,110})[Difficulty.Current])
		
		Game.ActivateVehicle("cletu_vB","NULL","target")
		Game.SetVehicleAIParams("cletu_vB",50,51)
		Game.SetStageAIRaceCatchupParams("cletu_vB",80,0.5,1.5,1.7) 
		
		Game.AddStageWaypoint("m3_waypoint4")
		Game.AddStageWaypoint("m3_waypoint5")
		Game.AddStageWaypoint("m3_waypoint6")
		Game.AddStageWaypoint("m3_waypoint7")
		
		Game.AddObjective("dump", "neither")
			Game.SetObjTargetVehicle("cletu_vB")
			for i = 28, ({32,35})[Difficulty.Current], 1 do
				Game.AddCollectible("m3_roadkill"..tostring(i),"roadkill")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetCompletionDialog("jerkwater","apu")
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("observ")
		Game.SetStageMessageIndex(6)
		if Difficulty.IsHellfish then
			Game.SetStageTime(50)
		end
		Game.SetMaxTraffic(5)
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m3_observatory","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		if Difficulty.IsHellfish then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
		Game.ShowStageComplete()
		
		Game.SetFadeOut(1.0)
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m3_current_end")
		Game.SetSwapForcedCarLocator("m3_firebird_end")
		Game.SetSwapPlayerLocator("m3_lisa_observatory")
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("observ")
		Game.SetStageMessageIndex(7)
		
		Game.AddObjective("interior")
			Game.AddNPC("frink", "m3_frink_start")
			Game.SetDestination("Observatory", "obsv_mission_doorstar")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("frink")
		Game.SetStageMessageIndex(8)
		
		Game.AddObjective("talkto", "neither")
			Game.AddNPC("frink", "m3_frink_start")
			Game.AddObjectiveNPCWaypoint("frink", "m3_frink_walk1")
			Game.SetTalkToTarget("frink", 0, 0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0, "final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)    
			Game.AmbientAnimationRandomize(0, 0)
			Game.SetConversationCam(0, "pc_far")
			Game.SetConversationCam(1, "npc_near")
			Game.SetConversationCam(2, "pc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.SetDialogueInfo("lisa","frink","conspiracy",0)
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()
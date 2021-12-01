Game.SelectMission("m5")
	Game.SetMissionResetPlayerInCar("m5_frink_v_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(0)
	
	Game.InitLevelPlayerVehicle("ironman","m5_frink_v_carstart","OTHER")
	Game.SetForcedCar()

	
	Game.AddStage() Game.RESET_TO_HERE()
		Game.SetHUDIcon("nuctruck")
		Game.SetStageMessageIndex(3)
		Game.SetMaxTraffic(2)
		
		Game.AddStageVehicle("nuctruck","m5_nuctruck_carstart","target","missions\\l1m5\\nuctruck" .. tostring(Difficulty.Current) .. ".con")
		Game.SetVehicleAIParams("nuctruck",50,51)
		Game.SetStageAITargetCatchupParams("nuctruck", 20, 70)

		Game.AddStageWaypoint("m5_nuctruck_waypoint1")
		Game.AddStageWaypoint("m5_nuctruck_waypoint2")
		Game.AddStageWaypoint("m5_nuctruck_waypoint11")
		Game.AddStageWaypoint("m5_nuctruck_waypoint3")
		Game.AddStageWaypoint("m5_nuctruck_waypoint4")	
		
		Game.AddObjective("dump")
			Game.AddNPC("frink","m5_frink_start")
			Game.SetObjTargetVehicle("nuctruck")
			Game.AddCollectible("m5_nuctruck_litter1","nuclear_waste") Game.BindCollectibleTo(0,0)
			Game.AddCollectible("m5_nuctruck_litter2","nuclear_waste") Game.BindCollectibleTo(1,1)
			Game.AddCollectible("m5_nuctruck_litter3","nuclear_waste") Game.BindCollectibleTo(2,3)
		Game.CloseObjective()
		
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, ({250, 150})[Difficulty.Current])
			Game.SetCondTargetVehicle("nuctruck")
		Game.CloseCondition()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("barrel")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({140,15})[Difficulty.Current])
		
		Game.ActivateVehicle("nuctruck","NULL","target")
		
		Game.AddStageWaypoint("m5_nuctruck_waypoint4")
		
		Game.AddCollectibleStateProp("bombbarrel","m5_bombbarrel",2)
		
		Game.AddObjective("pickupitem")
			Game.SetPickupTarget("bombbarrel")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
	Game.CloseStage()


	if not Difficulty.IsNormal then
		Game.AddStage()
			Game.SetHUDIcon("pwrplant")
			Game.SetStageMessageIndex(5)
			Game.SetStageTime(({30,20})[Difficulty.Current])
			
			Game.AddObjective("goto")
				Game.SetDestination("m5_parkinglot","carsphere")
			Game.CloseObjective()
			
			Game.AddCondition("timeout") Game.CloseCondition()
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			Game.AddCondition("keepbarrel",1) Game.CloseCondition()
		Game.CloseStage()	
		
		Game.AddStage()
			Game.SetHUDIcon("nuctruck")
			Game.SetStageMessageIndex(6)
			Game.SetMaxTraffic(2)
			
			Game.ClearTrafficForStage()
			
			Game.AddStageVehicle("nuctruck","m5_nuctruck_carstart2","evade","missions\\l1m5\\nuctruck" .. tostring(Difficulty.Current) .. ".con")
			Game.SetVehicleAIParams("nuctruck",50,51)

			Game.AddStageWaypoint("m5_nuctruck_waypoint5")
			Game.AddStageWaypoint("m5_nuctruck_waypoint6")
			Game.AddStageWaypoint("m5_nuctruck_waypoint7")
			Game.AddStageWaypoint("m5_nuctruck_waypoint8")
			Game.AddStageWaypoint("m5_nuctruck_waypoint9")
			Game.AddStageWaypoint("m5_nuctruck_waypoint10")
			
			Game.AddObjective("dump")
				Game.SetObjTargetVehicle("nuctruck")
				Game.AddCollectible("m5_nuctruck_litter4","nuclear_waste") Game.BindCollectibleTo(0,0)
				Game.AddCollectible("m5_nuctruck_litter5","nuclear_waste") Game.BindCollectibleTo(1,1)
				Game.AddCollectible("m5_nuctruck_litter6","nuclear_waste") Game.BindCollectibleTo(2,2)
				Game.AddCollectible("m5_nuctruck_litter7","nuclear_waste") Game.BindCollectibleTo(3,3)
				Game.AddCollectible("m5_nuctruck_litter8","nuclear_waste") Game.BindCollectibleTo(4,4)
			Game.CloseObjective()
			
			Game.AddCondition("followdistance")
				Game.SetFollowDistances(0, ({250, 150})[Difficulty.Current])
				Game.SetCondTargetVehicle("nuctruck")
			Game.CloseCondition()
			
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			Game.AddCondition("keepbarrel",2) Game.CloseCondition()
		Game.CloseStage()
	end

	Game.AddStage()
		Game.SetHUDIcon("frkhouse")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({180,25})[Difficulty.Current])
		
		if not Difficulty.IsNormal then
			Game.ActivateVehicle("nuctruck","NULL","evade")	
			Game.AddStageWaypoint("m5_nuctruck_waypoint10")
		end
		
		Game.AddObjective("goto")
			Game.SetDestination("m5_frinkshouse","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		Game.AddCondition("keepbarrel",({1,3})[Difficulty.Current]) Game.CloseCondition()
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m5_current_end")
		Game.SetSwapForcedCarLocator("m5_frink_v_end")
		Game.SetSwapPlayerLocator("m5_homer_end")
		
		Game.SetFadeOut(1.0)
	Game.CloseStage()
	
	Game.AddStage(1)
		Game.AddObjective("timer")
			Game.AddNPC("frink","m5_frink_end")
			
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_far")
			Game.SetConversationCam(1,"pc_near")
			Game.AddAmbientNpcAnimation("dialogue_thinking")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_hands_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_open_arm_hand_gesture")
			Game.SetCamBestSide("bestside_m0")
			Game.SetDialogueInfo("homer","frink","helpout",0)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
		Game.CloseObjective()
		
		Game.SetCompletionDialog("ohboy")
	Game.CloseStage()

Game.CloseMission()
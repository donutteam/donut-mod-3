if Settings.DisableLevel1Mission3 then return end

Game.SelectMission("m3")
	Game.SetMissionResetPlayerInCar("m3_current_carstart2")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(1)

	if Difficulty.IsDeathfish then
		Game.InitLevelPlayerVehicle("death","m3_current_carstart2","OTHER")
		Game.SetForcedCar()
	end

	if not Difficulty.IsDeathfish then
		Game.AddStage()
			Game.SetHUDIcon("simpdoor")
			Game.SetStageMessageIndex(8)
			
			-- Game.AddStageCharacter("homer", "homer_home", "", "current", "current_carstart2")
			
			Game.AddObjective("gooutside")
				Game.AddNPC("marge","marge_start")
				Game.SetDestination("outside_simpsonshouse")
				Game.TurnGotoDialogOff()
			Game.CloseObjective()
		Game.CloseStage()
	end
	
	Game.AddStage()
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 10, 5})[Difficulty.Current])
		end
		
		Game.AddStageVehicle("smith_v","m3_smith_v_carstart","NULL","missions\\l1m3\\smith_v" .. tostring(Difficulty.Current) .. ".con","smithers")
		if Difficulty.IsDeathfish then 
			Game.AddStageVehicle("nuctruck","m3_nuctruck_carstart","NULL","missions\\l1m3\\nuctruck.con")
			Game.AddStageVehicle("nukebusR","m3_nukebusR_carstart","NULL","missions\\l1m3\\nukebusR.con")
		end
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()
	
	Game.AddStage()	Game.RESET_TO_HERE()
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(4)
		
		Game.ActivateVehicle("smith_v", "NULL", ({"target","evade","evade"})[Difficulty.Current])
		Game.SetVehicleAIParams("smith_v", 50, 51)

		if Difficulty.IsDeathfish then
			Game.ActivateVehicle("nuctruck","NULL","evade")
		end

		Game.StartCountdown("count")
		
		Game.AddStageWaypoint("m3_waypoint1")
		Game.AddStageWaypoint("m3_waypoint2")
		Game.AddStageWaypoint("m3_waypoint3")
		Game.AddStageWaypoint("m3_waypoint4")
		Game.AddStageWaypoint("m3_powerplant")
		
		Game.AddObjective("race")
			Game.AddCollectible("m3_powerplant","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("race")
			Game.SetCondTargetVehicle("smith_v")
		Game.CloseObjective()
		
		Game.SetCompletionDialog("start")
		Game.ShowStageComplete()
	Game.CloseStage()

	if not Difficulty.IsNormal then
		Game.AddStage()
			Game.SetHUDIcon("litter")
			Game.SetStageMessageIndex(11)
			Game.SetStageTime(({nil, 30, 20})[Difficulty.Current])
			 
			if Difficulty.IsDeathfish then
				Game.ActivateVehicle("nukebusR","NULL","chase")
			end

			Game.AddObjective("delivery","neither")
				for i = 1, 10, 1 do
					Game.AddCollectible("m3_litter_o" .. tostring(i), "garbage_can")
				end

				Game.SetCollectibleEffect("garbage_explosion")
			Game.CloseObjective()
			
			Game.AddCondition("timeout") Game.CloseCondition()
			
			Game.SetStageMusicAlwaysOn()
		Game.CloseStage()
	end

	Game.AddStage()
		Game.SetHUDIcon("litter")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({190, 115, 110})[Difficulty.Current])
		
		Game.AddStageVehicle("garbage","m3_garbage_carstart","NULL","missions\\l1m3\\garbage.con")

		if Difficulty.IsDeathfish then
			Game.ActivateVehicle("nukebusR","NULL","chase")
		end
		
		Game.AddObjective("delivery","neither")
			if not Difficulty.IsNormal then
				Game.AddCollectible("m3_litter1","garbage_can")
				Game.AddCollectible("m3_litter2","garbage_can")
			end
			Game.AddCollectible("m3_litter3","garbage_can")
			Game.AddCollectible("m3_litter4","garbage_can")
			Game.AddCollectible("m3_litter5","garbage_can")
			Game.AddCollectible("m3_litter6","garbage_can")
			Game.AddCollectible("m3_litter7","garbage_can")
			Game.AddCollectible("m3_litter8","garbage_can")
			Game.AddCollectible("m3_litter9","garbage_can")
			Game.AddCollectible("m3_litter10","garbage_can")
			if not Difficulty.IsNormal then
				Game.AddCollectible("m3_litter11","garbage_can")
				Game.AddCollectible("m3_litter12","garbage_can")
				Game.AddCollectible("m3_litter13","garbage_can")
				Game.AddCollectible("m3_litter14","garbage_can")
			end
			Game.AddCollectible("m3_litter15","garbage_can")
			Game.AddCollectible("m3_litter16","garbage_can")
			Game.AddCollectible("m3_litter17","garbage_can")
			Game.AddCollectible("m3_litter18","garbage_can")
			Game.AddCollectible("m3_litter19","garbage_can")
			Game.AddCollectible("m3_litter20","garbage_can")
			Game.AddCollectible("m3_litter21","garbage_can")
			Game.AddCollectible("m3_litter22","garbage_can")
			Game.AddCollectible("m3_litter23","garbage_can")
			Game.AddCollectible("m3_litter24","garbage_can")
			Game.AddCollectible("m3_litter25","garbage_can")
			Game.AddCollectible("m3_litter26","garbage_can")
			Game.AddCollectible("m3_litter27","garbage_can")
			Game.AddCollectible("m3_litter28","garbage_can")
			Game.AddCollectible("m3_litter29","garbage_can")
			Game.AddCollectible("m3_litter30","garbage_can")
			Game.SetCollectibleEffect("garbage_explosion")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.SetStageMusicAlwaysOn()
		Game.ShowStageComplete()
		Game.SetCompletionDialog("all")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 15, 10})[Difficulty.Current])
		end
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("garbage")
		Game.SetStageMessageIndex(6)
		Game.SetStageTime(({110, 55, 40})[Difficulty.Current])
		
		Game.AddObjective("goto","neither")
			Game.SetDestination("m3_dump","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("garbage")
		Game.SetStageMessageIndex(9)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 10, 5})[Difficulty.Current])
		end
		
		Game.AddObjective("goto","neither")
			Game.SetDestination("m3_dump2","triggersphere")
			Game.MustActionTrigger()
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
		Game.SetStageMusicAlwaysOn()
		Game.ShowStageComplete()
		Game.SetCompletionDialog("dump")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 10, 5})[Difficulty.Current])
		end
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("wstation")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({110, 55, 30})[Difficulty.Current])
		
		Game.AddObjective("goto","neither")
			Game.AddNPC("smithers","m3_smithers_start")
			Game.SetDestination("m3_workstation","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("smithers")
		Game.SetStageMessageIndex(10)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 15, 5})[Difficulty.Current])
		end
		
		Game.AddObjective("talkto")
			Game.AddNPC("smithers","m3_smithers_start")
			Game.SetTalkToTarget("smithers",0,0)
		Game.CloseObjective()
	
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.SetDialogueInfo("homer","smithers","done",0)
			Game.SetDialoguePositions("m3_homer_dialog","m3_smithers_start","m3_dialog_pos2",1) -- Leave this here. The dialog stage's camera can look awful without it.
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
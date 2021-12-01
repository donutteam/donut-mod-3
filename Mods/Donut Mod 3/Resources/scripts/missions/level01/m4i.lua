Game.SelectMission("m4")
	Game.SetMissionResetPlayerOutCar("m4_homer_out","m4_current_carstart")
	Game.SetDynaLoadData("l1r4a.p3d;l1z6.p3d;l1r6.p3d;")
	Game.UsePedGroup(7)
	
	Game.AddStage(0)
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(14)
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("goto")
			Game.AddNPC("smithers","m4_smithers_hide") --This is used to hide Smithers as he's still standing by the door if you do L1M3 and then L1M4 without warping.
			Game.SetDestination("m4_outside_ws","triggersphere")
			Game.TurnGotoDialogOff()
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage() --Game.RESET_TO_HERE()
		Game.SetHUDIcon("powercou")
		Game.SetStageMessageIndex(2)
		Game.SetStageTime(({210,45})[Difficulty.Current])
		
		Game.AddStageCharacter("homer","m4_homer_out","","current","m4_current_carstart")
		
		Game.AddObjective("delivery","neither")
			Game.AddNPC("smithers","m4_smithers_hide") --This is used to hide Smithers as he's still standing by the door if you do L1M3 and then L1M4 without warping.
			for i = 1, 9, 1 do
				Game.AddCollectible("PP_powerbox" .. tostring(i))
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.StageStartMusicEvent("M4_start")
		Game.SetStageMusicAlwaysOn()
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(3)
		Game.SetHUDIcon("wstation")
		Game.SetStageMessageIndex(3)
		if Difficulty.IsHellfish then
			Game.SetStageTime(13)
		end
		
		Game.AddObjective("goto")
			Game.AddNPC("burns","m4_burns_start")
			Game.SetDestination("m4_workstation","triggersphere")
		Game.CloseObjective()
		
		
		if Difficulty.IsHellfish then
			Game.AddCondition("timeout") Game.CloseCondition()
	    end
	Game.CloseStage()
	
	Game.AddStage()	-- Fixes a small graphical issue where the carsphere would show up in the conversation (didn't have time to finish animating)
		Game.AddObjective("timer")
			Game.SetDurationTime(2)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.SetDialogueInfo("homer","burns","sleep",0)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(4)
		--Game.NoTrafficForStage()
		Game.SetMaxTraffic(0)
		
		Game.AddStageVehicle("cVan","m4_cVan_carstart","NULL","missions\\l1m4\\cvan" .. tostring(Difficulty.Current) .. ".con")
		
		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m4_parkinglot")
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cvan_v")
		Game.SetStageMessageIndex(5)
		
		Game.AddObjective("goto")
			Game.SetDestination("m4_investigate","triggersphere")
			Game.MustActionTrigger()
			Game.TurnGotoDialogOff()
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(6)
		if Difficulty.IsHellfish then
			Game.AddStageTime(10)
		end
		--Game.SetMaxTraffic(2)
	
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if Difficulty.IsHellfish then
			Game.AddCondition("timeout") Game.CloseCondition()
	    end
	Game.CloseStage()	
	
	Game.AddStage(8)
		Game.SetHUDIcon("cvan_v")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({90,55})[Difficulty.Current])
		
		Game.ActivateVehicle("cVan","NULL","chase")
		
		Game.AddObjective("losetail","neither")
			Game.SetObjTargetVehicle("cVan")
			Game.SetObjDistance(({150,210})[Difficulty.Current])
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(0)
		Game.CloseCondition()
		
		--Game.StageStartMusicEvent("M3_drama")
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(8)
		--if Difficulty.IsHellfish then
			--Game.AddStageTime(-1)
		--end
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("goto")
			Game.SetDestination("m4_simpsonshouse","carsphere")
		Game.CloseObjective()

		--if Difficulty.IsHellfish then
			--Game.AddCondition("timeout") Game.CloseCondition()
		--end
	Game.CloseStage()
	
	Game.AddStage(2)
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(9)
		Game.SetStageTime(({20,10})[Difficulty.Current])
		
		Game.AddObjective("interior","nearest road")
			Game.AddNPC("marge","m4_marge_start")
			Game.SetDestination("SimpsonsHouse","simp_mission_doorstar")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage(15)
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(10)
		
		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m4_couch","triggersphere")
			Game.MustActionTrigger()
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(1)
		Game.AddObjective("fmv")
			Game.SetFMVInfo("fmv2.rmv")
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(5)
		Game.SetHUDIcon("simpdoor")
		Game.SetStageMessageIndex(11)
		
		Game.AddStageCharacter("homer","m4_homer_inside","","current","m4_current_chase")
		Game.AddStageVehicle("cVan","m4_cVan_chase","NULL","missions\\l1m4\\cVan".. tostring(Difficulty.Current) .. ".con")
		
		Game.AddObjective("gooutside")
			Game.SetDestination("outside_simpsonshouse")
			Game.TurnGotoDialogOff()
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetStageMessageIndex(13)
		
		Game.AddObjective("timer")
			Game.SetDurationTime(7)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(1)
		Game.SetHUDIcon("cvan_v")
		Game.SetStageMessageIndex(12)
		
		Game.ActivateVehicle("cVan","NULL", ({"target","evade","evade"})[Difficulty.Current])	Game.SetVehicleAIParams("cVan",50,51)

		if Difficulty.IsNormal then
			Game.AddStageWaypoint("m4_cVan_waypoint4")
			Game.AddStageWaypoint("m4_cVan_waypoint5")
			Game.AddStageWaypoint("m4_cVan_waypoint6")
		else
			Game.AddStageWaypoint("m4_cVan_waypoint1")
			Game.AddStageWaypoint("m4_cVan_waypoint2")
			Game.AddStageWaypoint("m4_cVan_waypoint3")
		end
		
		Game.AddObjective("follow","neither")
			Game.SetObjTargetVehicle("cVan")
		Game.CloseObjective()

	    Game.AddCondition("followdistance")
			Game.SetFollowDistances(0,({250,150})[Difficulty.Current])
			Game.SetCondTargetVehicle("cVan")
		Game.CloseCondition()

		Game.StageStartMusicEvent("M5_start")
		Game.SetFadeOut(1.0)
    Game.CloseStage()

	Game.AddStage(1)
		Game.SetMaxTraffic(2)
		
		Game.PlacePlayerCar("current","m4_current_end")
		
		Game.AddObjective("timer")
			Game.AddNPC("npd","npd_end")
			Game.SetDurationTime(1)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"pc_near")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.SetDialogueInfo("homer","npd","somrburn",0)
			Game.SetDialoguePositions("m4_homer_skeleton","m4_npd_skeleton","m4_current_skeleton")
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
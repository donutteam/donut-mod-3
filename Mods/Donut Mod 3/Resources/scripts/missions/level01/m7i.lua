Game.SelectMission("m7")
	Game.SetMissionResetPlayerInCar("m7_current_carstart")
	Game.SetDynaLoadData("l1r1.p3d;l1z2.p3d;l1r2.p3d;")
	Game.UsePedGroup(0)
	
	Game.StreetRacePropsLoad("l1m7door.p3d;")
	Game.StreetRacePropsUnload("l1m7door.p3d:")

	Game.AddStage(1) Game.RESET_TO_HERE()
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({120,70})[Difficulty.Current])
		Game.SetMaxTraffic(({2,3})[Difficulty.Current])
		
		Game.AddStageCharacter("homer","NULL","","current","m7_current_carstart")

		Game.AddStageVehicle("nukebus","m7_nukebus_carstart","NULL","missions\\l1m7\\nukebus".. tostring(Difficulty.Current) .. ".con")
		Game.AddObjective("goto")
			Game.SetDestination("m7_chase")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetCompletionDialog("transit","burns")
	Game.CloseStage()
	
	Game.AddStage(2)
		Game.SetHUDIcon("nukebus")
		Game.SetStageMessageIndex(4)
		Game.AddStageTime(-1)
		Game.SetMaxTraffic(({2,2})[Difficulty.Current])

		Game.ActivateVehicle("nukebus","NULL","chase")

		Game.AddObjective("losetail","neither")
			Game.SetObjTargetVehicle("nukebus")
			Game.SetObjDistance(({100,200})[Difficulty.Current])
		Game.CloseObjective()

		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(0)
		Game.CloseCondition()

		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(3)
		Game.SetHUDIcon("pwrplant")
		Game.SetStageMessageIndex(3)
		Game.AddStageTime(({60,-1,-1})[Difficulty.Current])
		
		Game.SetMaxTraffic(({2,3})[Difficulty.Current])

		Game.AddStageVehicle("smith_v","m7_smith_v_carstart","NULL","missions\\l1m7\\smith_v" .. tostring(Difficulty.Current) .. ".con","smithers")

		Game.AddObjective("goto")
			Game.SetDestination("m7_powerplant")
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetCompletionDialog("wellwell")
	Game.CloseStage()
	
	Game.AddStage(4)
		Game.SetHUDIcon("smith_v")
		Game.SetStageMessageIndex(5)
		Game.SetMaxTraffic(({2,2})[Difficulty.Current])
		
		Game.ActivateVehicle("smith_v","NULL","evade")
		Game.SetVehicleAIParams("smith_v",50,51)
		
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("nukebusB","m7_nukebusB_carstart","chase","missions\\l1m7\\nukebusB.con")
			Game.AddStageVehicle("nukebusR","m7_nukebusR_carstart","chase","missions\\l1m7\\nukebusR.con")
		end
			
		Game.AddStageWaypoint("m7_smith_v_waypoint1")
		Game.AddStageWaypoint("m7_smith_v_waypoint2")
		Game.AddStageWaypoint("m7_smith_v_waypoint3")
		Game.AddStageWaypoint("m7_smith_v_waypoint4")
		
		Game.AddObjective("destroy","neither")
			Game.AddNPC("burns","m7_burns_start")
			Game.SetObjTargetVehicle("smith_v")
		Game.CloseObjective()
		
		Game.AddCondition("race")
			Game.SetCondTargetVehicle("smith_v")
		Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		if not Difficulty.IsNormal then
			Game.AddCondition("followdistance")
				Game.SetFollowDistances(0, ({240,175})[Difficulty.Current])
				Game.SetCondTargetVehicle("smith_v")
			Game.CloseCondition()
		end
		
		Game.StageStartMusicEvent("M7_drama")
		Game.ShowStageComplete()
		Game.SetCompletionDialog("homerone")
	Game.CloseStage()
	
	Game.AddStage(5)
		Game.SetHUDIcon("mansion")
		Game.SetStageMessageIndex(7)
		Game.SetMaxTraffic(({2,3})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.AddNPC("burns","m7_burns_start")
			Game.SetDestination("m7_mansion","carsphere")
		Game.CloseObjective()
		
		Game.SetCompletionDialog("there")
	Game.CloseStage()
	
	Game.AddStage(6)
		Game.SetHUDIcon("burns")
		Game.SetStageMessageIndex(8)
		
		Game.AddObjective("talkto")
			Game.SetTalkToTarget("burns",0,0)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("burns","m7_burns_start")
			Game.AmbientAnimationRandomize(1,0) 
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"pc_far")
			Game.SetConversationCam(1,"npc_far")
			Game.SetConversationCam(2,"pc_far")
			Game.SetConversationCam(3,"npc_far")
			Game.SetConversationCam(4,"pc_far")
			Game.SetConversationCam(5,"npc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("dialogue_shaking_fist")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_no")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.SetCamBestSide("m7_bestside2")
			Game.SetDialogueInfo("homer","burns","accuse",0)
			Game.SetDialoguePositions("homer_accuse","burns_accuse","current_accuse",1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
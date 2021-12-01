Game.SelectMission("m1")
	Game.SetMissionResetPlayerInCar("m1_current_carstart2")
	Game.SetDynaLoadData("l2z1.p3d;l2r1.p3d;l2r4.p3d;")
	Game.UsePedGroup(0)	
	
	Game.AddStage() Game.RESET_TO_HERE() --1. Follow the Bonestorm Truck
		Game.SetHUDIcon("bonestor")
		Game.SetStageMessageIndex(({2,2,2})[Difficulty.Current])
		Game.SetMaxTraffic(({2,3,4})[Difficulty.Current])
		
		Game.AddStageCharacter("bart","NULL","","current","m1_current_carstart2")
		
		Game.AddStageVehicle("cBone","m1_cBone_carstart", ({"target","evade","evade"})[Difficulty.Current] ,"missions\\l2m1\\cBone.con","moleman") 
		
		Game.AddStageVehicle("skinn_v","m1_skinn_v_carstart","NULL","missions\\l2m1\\skinn_v" .. tostring(Difficulty.Current) .. ".con","skinner")

		Game.AddStageWaypoint("m1_waypoint1")
		Game.AddStageWaypoint("m1_waypoint2")
		Game.AddStageWaypoint("m1_waypoint3")
		Game.AddStageWaypoint("m1_waypoint4")
		Game.AddStageWaypoint("m1_waypoint5")

		Game.AddObjective("follow")
		Game.SetObjTargetVehicle("cBone")
		Game.CloseObjective()

		Game.AddCondition("followdistance")
		Game.SetFollowDistances(0,({250,150,100})[Difficulty.Current])
		Game.SetCondTargetVehicle("cBone")
		Game.CloseCondition()
		
		Game.SetCompletionDialog("charlie","skinner")
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage() -- 2. Get away from Skinner 
		Game.SetHUDIcon("skinn_v")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({60,45,45})[Difficulty.Current])
		Game.SetMaxTraffic(({2,3,4})[Difficulty.Current])
		
		Game.ActivateVehicle("cBone","NULL","evade")
		Game.AddStageWaypoint("m1_waypoint1")
		Game.AddStageVehicle("skinn_v","m1_skinn_v_carstart","chase","missions\\l2m1\\skinn_v" .. tostring(Difficulty.Current) .. ".con","skinner")
		
		Game.AddObjective("losetail")
			Game.SetObjTargetVehicle("skinn_v")
			Game.SetObjDistance(({125,175,200})[Difficulty.Current])
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()

		Game.SetCompletionDialog("gator")
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage() --3. Drive back to the Try-N-Save to catch up with truck
		Game.SetHUDIcon("trynsave")
		Game.SetStageMessageIndex(4)
		Game.SetMaxTraffic(({2,3,4})[Difficulty.Current])
		Game.SetStageTime(({80,60,60})[Difficulty.Current])
		
		Game.AddStageVehicle("cDone","m1_cBone_carstart2","NULL","missions\\l2m1\\cDone" .. tostring(Difficulty.Current) .. ".con","moleman") 
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m1_trynsave","carsphere")
		Game.CloseObjective()

		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage() --4. Destroy the Bonestorm Truck to obtain the crate
		Game.SetHUDIcon("bonestor")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({120,100,80})[Difficulty.Current])
		Game.SetMaxTraffic(({2,3,4})[Difficulty.Current])
		
		Game.ActivateVehicle("cDone","NULL","evade") Game.SetVehicleAIParams("cDone",-51,-50)
		
		Game.AddStageWaypoint("m1_cBonewp1")
		Game.AddStageWaypoint("m1_cBonewp2")
		Game.AddStageWaypoint("m1_cBonewp3")
		Game.AddStageWaypoint("m1_cBonewp4")
		Game.AddStageWaypoint("m1_cBonewp5")
		
		Game.AddObjective("destroy")
			Game.SetObjTargetVehicle("cDone")
		Game.CloseCondition()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage() --5. Drive back to the Try-N-Save to see if they have Bonestorm copies
		Game.SetHUDIcon("trynsave")
		Game.SetStageMessageIndex(6)
		Game.SetMaxTraffic(({2,4,4})[Difficulty.Current])
		Game.SetStageTime(({80,50,50})[Difficulty.Current])
		
		Game.AddObjective("goto","both")
			Game.AddNPC("jimbo","m1_jimbo_start")
			Game.SetDestination("m1_trynsave","carsphere")
		Game.CloseObjective()

		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage()  --6. Talk to Jimbo about the Bonestorm game.
		Game.SetHUDIcon("jimbo")
		Game.SetStageMessageIndex(7)
		Game.AddObjective("talkto")
			Game.AddNPC("jimbo","m1_jimbo_start")
			Game.SetTalkToTarget("jimbo",0,-0.5)
		Game.CloseObjective()
	Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage("final") --7. Dialogue with Jimbo
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_far")
			Game.SetConversationCam(1,"pc_near")
			Game.AddAmbientNpcAnimation("dialogue_no")
			Game.AddAmbientNpcAnimation("dialogue_cross_arms")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_no")
			Game.SetDialogueInfo("bart","jimbo","finger",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
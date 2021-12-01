Game.SelectMission("m1")
	Game.SetMissionResetPlayerInCar("m1_current_carstart2")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(0)
	
	Game.AddStage(1)	Game.RESET_TO_HERE()
		Game.SetHUDIcon("buzzcola")
		Game.SetStageMessageIndex(2)
		if not Difficulty.IsNormal then
			Game.SetStageTime(5)
		end
		Game.SetMaxTraffic(2)
		
		Game.AddStageCharacter("homer","NULL","","current","m1_current_carstart2")
		
		Game.AddObjective("goto","nearest road")
			Game.SetDestination("m1_i_soda","buzzcola") 
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end

		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(2)
		Game.SetHUDIcon("kbmeal")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({55,25})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("m1_kmeal","krusty_meal") 
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(3)
		Game.SetHUDIcon("litter")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({50,15})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("m1_litter","garbage_can") 
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(4)
		Game.SetHUDIcon("school")
		Game.SetStageMessageIndex(5)
		--Game.SetStageTime(({70,33})[Difficulty.Current])
		Game.SetStageTime(70)
		
		Game.AddStageVehicle("skinn_v","m1_skinn_v_carstart","NULL","missions\\l1m1\\skinn_v" .. tostring(Difficulty.Current) .. ".con","skinner")
		
		Game.AddObjective("goto")
			Game.SetDestination("m1_skinn_v_chasestart","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage(5)
		Game.SetHUDIcon("skinn_v")
		Game.SetStageMessageIndex(6)
		Game.SetMaxTraffic(({4,2,2})[Difficulty.Current])
		
		Game.ActivateVehicle("skinn_v","NULL","race")
		
		Game.AddStageWaypoint("m1_skinn_v_path1")
		Game.AddStageWaypoint("m1_skinn_v_path3")
		
		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("skinn_v")
		Game.CloseObjective()

		Game.AddCondition("race")
			Game.SetCondTargetVehicle("skinn_v")
		Game.CloseCondition()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.AddStageMusicChange()
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(6)
		Game.SetHUDIcon("school")
		Game.SetStageMessageIndex(7)
		
		Game.AddObjective("goto")
			Game.SetDestination("m1_school","carsphere") 
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(7)
		Game.SetHUDIcon("school")
		Game.SetStageMessageIndex(8)
		
		Game.AddObjective("interior","nearest road")
			Game.SetDestination("SpringfieldElementary","school_mission_doorstar")
		Game.CloseObjective()
		
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()
	
	Game.AddStage(8)
		Game.SetHUDIcon("lisa")
		Game.SetStageMessageIndex(9)
		
		Game.AddObjective("talkto","nearest road")
			Game.AddNPC("lisa","m1_lisa_start","SpringfieldElementary")
			Game.SetTalkToTarget("lisa",0, -0.5)
		Game.CloseObjective()
		
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none" )
			Game.AddAmbientNpcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientNpcAnimation("none" )
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_scratch_head")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_no")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.SetDialogueInfo("homer","lisa","bladder",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
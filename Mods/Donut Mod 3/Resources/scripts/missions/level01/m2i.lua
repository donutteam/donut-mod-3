Game.SelectMission("m2")
	Game.SetMissionResetPlayerInCar("m2_current_carstart2")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(0)
	
	if Difficulty.IsDeathfish then
		Game.InitLevelPlayerVehicle("death","m2_current_carstart2","OTHER")
		Game.SetForcedCar()
	end
	
	Game.UsePedGroup(0)
	
	Game.AddStage(2) Game.RESET_TO_HERE()
		Game.SetHUDIcon("tuxedo")
		Game.SetStageMessageIndex(6)
		Game.SetStageTime(({45,9,9})[Difficulty.Current])
		if Difficulty.IsNormal then
			Game.SetMaxTraffic(2)
		else
			Game.SetMaxTraffic(3)
	    end
		Game.AddStageCharacter("homer","NULL","","current","m2_current_carstart2")
		
		Game.AddObjective("goto","both")
			Game.TurnGotoDialogOff()
			
			if Difficulty.IsDeathfish then
				Game.SetDestination("m2_tuxdf", "tuxedo")
			else
				Game.SetDestination("m2_tux", "tuxedo")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(3)
		Game.SetHUDIcon("lawnmwr")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({50,14,6})[Difficulty.Current])
		
		Game.AddObjective("goto","both")
			if Difficulty.IsDeathfish then
				Game.SetDestination("m2_mowerdf", "lawnmower")
			else
				Game.SetDestination("m2_mower", "lawnmower")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.SetCompletionDialog("mower")
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(4)
		Game.SetHUDIcon("commun")
		Game.SetStageMessageIndex(16)
		Game.SetStageTime(({150,33,18})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.AddNPC("barney","m2_barney_start")
			Game.SetDestination("m2_communitycenter","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage(5)
		Game.SetHUDIcon("barne")
		Game.SetStageMessageIndex(8)
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("talkto","both")
			Game.SetTalkToTarget("barney",0,0)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage()
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_scratch_head")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("m2_bestside_barn")
			Game.SetDialogueInfo("homer","barney","cooler",0)
		Game.CloseObjective()
		
		--if Difficulty.IsDeathfish then
			--Game.SetFadeOut(0.1)
		--end
	Game.CloseStage()
	
	Game.AddStage(6)
		Game.SetHUDIcon("cooler")
		Game.SetStageMessageIndex(9)
		
		Game.AddObjective("goto")
			Game.SetDestination("m2_coolr","cooler")
		Game.CloseObjective()
		
		Game.ShowStageComplete()
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
	
	Game.AddStage(7)
		Game.SetHUDIcon("lawnchr")
		Game.SetStageMessageIndex(10)
		Game.SetStageTime(({40,20,8})[Difficulty.Current])
		
		Game.AddStageVehicle("wiggu_v","m2_wiggu_v_carstart1","NULL","missions\\l1m2\\wiggu_v" .. tostring(Difficulty.Current) .. ".con","wiggum")
		
		Game.AddObjective("goto","both")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m2_lwnchair","lawnchair")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()

		Game.ShowStageComplete()
		Game.SetCompletionDialog("wellwell","wiggum")
	Game.CloseStage()
	
	Game.AddStage(8)
		Game.SetHUDIcon("wiggu_v")
		Game.SetStageMessageIndex(11)
		Game.SetStageTime(({120,55,12})[Difficulty.Current])
		
		Game.ActivateVehicle("wiggu_v","NULL","chase")
		
		Game.AddObjective("losetail","neither")
			Game.SetObjTargetVehicle("wiggu_v")
			Game.SetObjDistance(({140,270,300})[Difficulty.Current])
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(({10,0})[Difficulty.Current])
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("picture")
	Game.CloseStage()
	
	Game.AddStage(9)
		Game.SetHUDIcon("photo")
		Game.SetStageMessageIndex(12)
		Game.SetStageTime(({180,40,25})[Difficulty.Current])
		
		Game.AddObjective("goto","both")
			Game.TurnGotoDialogOff()
			
			if Difficulty.IsDeathfish then
				Game.SetDestination("m2_flanpicdf","flanders_picture")
			else
				Game.SetDestination("m2_flanpic","flanders_picture")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
		--Game.SetCompletionDialog("inhaler")
	Game.CloseStage()
	
	Game.AddStage(10)
		Game.SetHUDIcon("inhaler")		
		Game.SetStageMessageIndex(13)
		
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil,15,18})[Difficulty.Current])
		end
		
		Game.AddStageVehicle("cDuff","m2_cDuff_carstart","NULL","missions\\l1m2\\cDuff.con","jasper")
		
		Game.AddObjective("goto")
			Game.TurnGotoDialogOff()
			Game.SetDestination("m2_chase","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout")	Game.CloseCondition()
		end
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(11)
		Game.SetHUDIcon("inhaler")
		Game.SetStageMessageIndex(14)
		Game.SetStageTime(({90, 70})[Difficulty.Current])
		
		Game.ActivateVehicle("cDuff","NULL","target") Game.SetVehicleAIParams("cDuff",-10,-9)
		Game.AddStageWaypoint("m2_cDuff_waypoint4")
		Game.AddStageWaypoint("m2_cDuff_waypoint5")
		Game.AddStageWaypoint("m2_cDuff_waypoint6")
		Game.AddStageWaypoint("m2_cDuff_waypoint5")
		Game.AddStageWaypoint("m2_cDuff_waypoint4")
		Game.AddStageWaypoint("m2_cDuff_waypoint3")
		Game.AddStageWaypoint("m2_cDuff_waypoint2")
		Game.AddStageWaypoint("m2_cDuff_waypoint1")
		
		Game.AddObjective("dump","neither")
			Game.SetObjTargetVehicle("cDuff")
			Game.AddCollectible("m2_cDuff_item1","crate_duff")
			Game.AddCollectible("m2_cDuff_item2","crate_duff")
			Game.AddCollectible("m2_cDuff_item3","crate_duff")
			Game.AddCollectible("m2_cDuff_item4","crate_duff")
			if not Difficulty.IsNormal then
				Game.AddCollectible("m2_cDuff_item5","crate_duff")
				Game.AddCollectible("m2_cDuff_item6","crate_duff")
				Game.AddCollectible("m2_cDuff_item7","crate_duff")
			end
			Game.AddCollectible("m2_cDuff_item8","inhaler")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.SetCompletionDialog("return")
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(12)
		Game.SetHUDIcon("ned")		
		Game.SetStageMessageIndex(15)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 50, 50})[Difficulty.Current])
		end 
		
		Game.AddStageVehicle("wiggu_v","m2_wiggu_v_carstart2","NULL","missions\\l1m2\\wiggu_v" .. tostring(Difficulty.Current) .. ".con","wiggum")
		
		Game.AddObjective("goto")
			Game.AddNPC("ned","ned_start")
			Game.SetDestination("m2_flandershouse","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("gotya","wiggum")
	Game.CloseStage()
	
	Game.AddStage(13)
		Game.SetHUDIcon("wiggu_v")
		Game.SetStageMessageIndex(17)
		Game.SetStageTime(({110, 30})[Difficulty.Current])
		
		Game.ActivateVehicle("wiggu_v","NULL","chase")
		
		Game.AddObjective("losetail","neither")
			Game.SetObjTargetVehicle("wiggu_v")
			Game.SetObjDistance(({150,270})[Difficulty.Current])
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(({10,0})[Difficulty.Current])
		Game.CloseCondition()
		
		Game.StageStartMusicEvent("M2_drama")
		Game.ShowStageComplete()
		Game.SetCompletionDialog("fine","wiggum")
	Game.CloseStage()
	
	Game.AddStage(14)
		Game.SetHUDIcon("ned")
		Game.SetStageMessageIndex(15)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil,33})[Difficulty.Current])
		end
		
		Game.StageStartMusicEvent("M2_start")
		
		Game.AddObjective("goto")
			Game.AddNPC("ned","m2_ned_start")
			Game.SetDestination("m2_flandershouse","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout")	Game.CloseCondition()
		end
		
		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(15)
		Game.SetHUDIcon("ned")		
		Game.SetStageMessageIndex(5)
		
		Game.AddObjective("talkto","both")
			Game.AddNPC("ned","m2_ned_start")
			Game.SetTalkToTarget("ned",0,0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shaking_fist")
			Game.SetCamBestSide("bestside_m2")
			Game.SetDialogueInfo("homer","ned","reward",0)
			Game.SetDialoguePositions("homer_reward","ned_reward","current_reward",1)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
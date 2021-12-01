Game.SelectMission("m5")
	Game.SetMissionResetPlayerInCar("m5_cletu_v_carstart")
	Game.SetDynaLoadData("l2z1.p3d;l2z4.p3d;l2r4.p3d;")
	Game.UsePedGroup(1)
	Game.SetNumValidFailureHints(5)
	
	Game.InitLevelPlayerVehicle("cletu_v","m5_cletu_v_carstart","OTHER")
	Game.SetForcedCar()		

	Game.AddStage() --1. Follow Apu to find the Flatmeat 
		Game.RESET_TO_HERE()
		Game.SetHUDIcon("apu")
		Game.SetStageMessageIndex(2)
		Game.SetMaxTraffic(4)
		
		Game.AddStageVehicle("firebird","m5_firebird_carstart".. tostring(Difficulty.Current), ({"target","evade","evade"})[Difficulty.Current], "missions\\l2m5\\firebird".. tostring(Difficulty.Current) ..".con","apu") 
		Game.SetVehicleAIParams("firebird",50,51)
		
		if Difficulty.IsNormal then
			Game.AddStageWaypoint("m5_firebird_norm1")
			Game.AddStageWaypoint("m5_firebird_norm2")
			Game.AddStageWaypoint("m5_firebird_norm3")
		else
			Game.AddStageWaypoint("m5_firebird_waypoint2")
			Game.AddStageWaypoint("m5_firebird_waypoint3")
			Game.AddStageWaypoint("m5_firebird_waypoint4")
		end
		
		Game.StartCountdown("count")
		
		Game.AddObjective("follow","neither")
			Game.AddNPC("cletus","m5_cletus_hide")
			Game.SetObjTargetVehicle("firebird")
		Game.CloseObjective()
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0,({150,100})[Difficulty.Current])
			Game.SetCondTargetVehicle("firebird")
		Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetMusicState("Mission5","Stage1")
		Game.SetIrisWipe(0.1)
	Game.CloseStage()

	Game.AddStage() --2. Collect the Flatmeat 
	    Game.ActivateVehicle("firebird","NULL","target")
		
		if Difficulty.IsNormal then
			Game.AddStageWaypoint("m5_firebird_norm4")
		else
			Game.AddStageWaypoint("m5_firebird_waypoint5")
		end
		
		Game.SetHUDIcon("flatmeat")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({135,50})[Difficulty.Current])
		
		Game.NoTrafficForStage()
		
		Game.AddStageCharacter("bart", "m5_bart_park", "", "current", "m5_cletu_v_park")
		
		Game.AddObjective("delivery")
			for i = 1, 26, 1 do
				Game.AddCollectible("m5_roadkill" .. tostring(i), "roadkill")
			end
		Game.CloseObjective()
		
		Game.StageStartMusicEvent("M5_start")
		Game.SetStageMusicAlwaysOn()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage() --3. Get in Cletus' truck 
		Game.SetHUDIcon("cletus_v")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({20,15})[Difficulty.Current])
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("cletu_v")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()

	if Difficulty.IsHellfish then
		Game.AddStage() --4. Hellfish objective that adds another "collect the flatmeat" stage 
			Game.SetHUDIcon("flatmeat")
			Game.SetStageMessageIndex(9)
			Game.SetStageTime(75)
			
			Game.AddObjective("delivery")
				for i = 27, 45, 1 do
					Game.AddCollectible("m5_roadkill" .. tostring(i), "roadkill")
				end
			Game.CloseObjective()
			
			Game.AddCondition("timeout") Game.CloseCondition()
		Game.CloseStage()
	
		Game.AddStage() --5. Get in Cletus' truck 
			Game.SetHUDIcon("cletus_v")
			Game.SetStageMessageIndex(4)
			Game.SetStageTime(15)
			
			Game.AddObjective("getin")
				Game.SetObjTargetVehicle("cletu_v")
			Game.CloseObjective()
			
			Game.AddCondition("timeout") Game.CloseCondition()
		Game.CloseStage()
	end
	
	Game.AddStage() --6. Drive to the Krusty Burger by the Police Station 
		Game.SetHUDIcon("kburger")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({80,60})[Difficulty.Current])
		Game.SetMaxTraffic(3)
		
		Game.AddStageVehicle("firebird","m5_firebird_chase","NULL","missions\\l2m5\\firebird.con","apu")
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m5_chase","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.SetCompletionDialog("stinkdog","apu")
	Game.CloseStage()

	Game.AddStage() --7. Get away from Apu 
		Game.SetHUDIcon("firebird")
		Game.SetStageMessageIndex(6)
		Game.SetStageTime(({70,60})[Difficulty.Current])
		
		Game.ActivateVehicle("firebird","NULL","chase")
		
		Game.AddObjective("losetail","neither")
			Game.SetObjTargetVehicle("firebird")
			Game.SetObjDistance(({150,250})[Difficulty.Current])
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.ShowStageComplete()
		Game.SetMusicState("Mission5","Stage2")
	Game.CloseStage()

	Game.AddStage() --8. Drive to the Krusty Burger
		Game.SetHUDIcon("kburger")
		Game.SetStageMessageIndex(7)
		
		Game.SetStageTime(90)

		Game.AddObjective("goto","both")
			Game.SetDestination("m5_krustyburger","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m5_current_carstart")
		Game.SetSwapForcedCarLocator("m5_cletu_v_carstart")
		Game.SetSwapPlayerLocator("m5_bart_end")
		
		Game.SetMusicState("Mission5","Stage1")
	Game.CloseStage()

	Game.AddStage(1) --9. timer objective for chars. to teleport outside truck
		Game.AddObjective("timer")
			Game.AddNPC("cletus","cletus_end")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage() --10. CLetus dialogue objective 
		Game.AddObjective("dialogue")
			Game.AddNPC("cletus","m5_cletus_roadkill")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"pc_far")
			Game.SetConversationCam(1,"npc_far")
			Game.SetConversationCam(2,"pc_far")
			Game.SetConversationCam(3,"npc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_scratch_head")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_cross_arms")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("bestside_roadkill")
			Game.SetDialogueInfo("bart","cletus","roadkill",0)
			Game.SetDialoguePositions("m5_bart_roadkill","m5_cletus_roadkill","m5_current_end")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final") --11. Collect the satelite
		Game.SetHUDIcon("setelite")
		Game.SetStageMessageIndex(8)
		
		Game.AddObjective("goto","neither")
			Game.AddNPC("cletus","m5_cletus_end")
			Game.SetDestination("m5_s_dish","satellite_dish")
		Game.CloseObjective()
		Game.SetMusicState("Mission5","Stage2")
	Game.CloseStage()

Game.CloseMission()
Game.SelectMission("m2")
	Game.SetMissionResetPlayerInCar("m2_scorp_v_carstart")
	Game.SetDynaLoadData("l2z3.p3d;l2r2.p3d;l2r3.p3d;")
	Game.UsePedGroup(4)
	
	Game.InitLevelPlayerVehicle("scorp_v","m2_scorp_v_carstart","OTHER")
	Game.SetForcedCar()

	Game.AddStage(0) Game.RESET_TO_HERE() --1. Drive to Moe's 
		Game.SetHUDIcon("moes")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({50,30,30})[Difficulty.Current])
		Game.SetMaxTraffic(({2,4,4})[Difficulty.Current])
		
		Game.AddStageVehicle("moe_v","m2_moe_v_carstart","NULL","missions\\l2m2\\moe_v".. tostring(Difficulty.Current) ..".con","moe")
		
		Game.AddObjective("goto")
			Game.AddNPC("eddie","m2_eddie_hide")
			Game.AddNPC("kearney","m2_kearney_hide")
			Game.SetDestination("m2_moes","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
		
		-- Loren: This is here so if the player fails from protecting themselves against Wiggum, the guitar track doesn't keep playing if they reset. - Kenny
		Game.SetMusicState("Mission2","Stage1")
		Game.SetCompletionDialog("cleverpun","moe")
	Game.CloseStage()

	Game.AddStage(0) --2. Hit Moe's car and collect the fireworks 
		Game.SetHUDIcon("moe_v")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({145,80,80})[Difficulty.Current])
		Game.SetMaxTraffic(({2,4,4})[Difficulty.Current])

		Game.ActivateVehicle("moe_v","NULL","target") 
		Game.SetVehicleAIParams("moe_v", 50, 51)	-- No shortcuts on easy/normal, shortucts on hellfish.

		Game.AddStageWaypoint("m2_moe_v_waypoint1")
		Game.AddStageWaypoint("m2_moe_v_waypoint2")
		Game.AddStageWaypoint("m2_moe_v_waypoint3")
		Game.AddStageWaypoint("m2_moe_v_waypoint4")

		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("moe_v")
			
			local ItemDialog = {
				[2] = {"mike","moe"},
				[4] = {"bigidea","moe"},	-- Add's dialog to the fourth item.
				[8] = {"spines","moe"},
			}
			
			for i = 1, ({8,12,12})[Difficulty.Current], 1 do
				if ItemDialog[i] then
					Game.AddCollectible("m2_firewrks" .. tostring(i), "fireworks", ItemDialog[i][1], ItemDialog[i][2])
				else
					Game.AddCollectible("m2_firewrks" .. tostring(i), "fireworks")
				end
			end
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()

		Game.ShowStageComplete()
		Game.SetCompletionDialog("dogs","moe")
	Game.CloseStage()

	Game.AddStage(0) --3. Drive to the police station 
		Game.SetHUDIcon("police")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({70,45,40})[Difficulty.Current])
		Game.SetMaxTraffic(({2,3,3})[Difficulty.Current])
		
		Game.AddStageVehicle("wiggu_v","m2_wiggu_v_carstart","NULL","missions\\l2m2\\wiggu_v" .. tostring(Difficulty.Current) .. ".con","wiggum")
		
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("cPolice","m2_cSedan_carstart","NULL","missions\\l2m2\\cSedan.con","eddie")
		end
		
		Game.AddObjective("goto","both")
			Game.AddNPC("eddie","m2_eddie_hide")
			Game.AddNPC("ralph","m2_ralph_start")
			Game.SetDestination("m2_policestation","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(10000)
		Game.CloseCondition()
			
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()

	Game.AddStage() --4. Talk to Ralph 
		Game.SetHUDIcon("ralph")
		Game.SetStageMessageIndex(6)
		Game.NoTrafficForStage()
		
		Game.AddObjective("talkto","both")
			Game.AddNPC("eddie","m2_eddie_hide")
			Game.AddNPC("ralph","m2_ralph_start")
			Game.SetTalkToTarget("ralph",0,-0.5)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0) --5. Ralph dialogue 
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"pc_far")
			Game.SetConversationCam(1,"npc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("bart","ralph","stash",0)
		Game.CloseObjective()
		
		Game.SetFadeOut(0.1)
	Game.CloseStage()
	
	Game.AddStage() --6. Timer for the firework to spawn and get attached to the car 
		Game.AddStageCharacter("bart","NULL","","scorp_v","m2_scorp_v_carstart2")
		
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
			Game.StayInBlack()
		Game.CloseStage()
	Game.CloseStage()
	
	-- Normal Stages - Get the fireworks and get out!
	if Difficulty.IsNormal then
		Game.AddStage(3)
			Game.SetHUDIcon("firework")
			Game.SetStageMessageIndex(166)
				
			Game.AddObjective("goto")
				Game.SetDestination("m2_bombbarrel","fireworks")
			Game.CloseObjective()
			
			Game.SetCompletionDialog("life","wiggum")
		Game.CloseStage()
			
		Game.AddStage()
			Game.SetHUDIcon("wiggu_v")
			Game.SetStageMessageIndex(40) 
			Game.SetMaxTraffic(2)
				
			Game.ActivateVehicle("wiggu_v","NULL","chase") 
				
			Game.AddObjective("losetail","neither")
				Game.SetObjTargetVehicle("wiggu_v")
				Game.SetObjDistance(150)
			Game.CloseObjective()
			
			Game.SetStageTime(90)
			
			Game.AddCondition("timeout") Game.CloseCondition()
			
			Game.ShowStageComplete()
			Game.SetCompletionDialog("fought")
			Game.SetMusicState("Mission2", "Stage2")
		Game.CloseStage()
	else		
		--Hellfish/Deathfish Stages - Survive with the fireworks!
		Game.AddStage(3) --Stage to pick up the fireworks if they get destroyed
			Game.SetStageTime(8)
			
			Game.AddCollectibleStateProp("bombbarrel","m2_bombbarrel",2)
			
			Game.AddObjective("pickupitem")
				Game.SetPickupTarget("bombbarrel")
				Game.TurnGotoDialogOff()
			Game.CloseObjective()
			
			Game.AddCondition("timeout") Game.CloseCondition()
			
			Game.SetCompletionDialog("life","wiggum")
		Game.CloseStage()

		local StageTime = ({nil, 90, 180})[Difficulty.Current]
		Game.AddStage() --7. causes Wiggun's car and the Chase Sedan to activate 
			Game.SetHUDIcon("wiggu_v")
			Game.SetStageMessageIndex(8)
			Game.SetStageTime(StageTime)
			Game.SetMaxTraffic(5)
			
			Game.ActivateVehicle("wiggu_v","NULL","chase") 
			Game.SetVehicleAIParams("wiggu_v", 50, 51)
			
			Game.ActivateVehicle("cPolice","NULL","chase")
			Game.SetVehicleAIParams("cPolice", 50, 51)
			
			Game.AddObjective("timer")
				Game.AddNPC("eddie","m2_eddie_hide")
				Game.SetDurationTime(StageTime)
			Game.CloseObjective()
			
			Game.AddCondition("outofvehicle")
				Game.SetCondTime(10000)
			Game.CloseCondition()
			Game.AddCondition("keepbarrel", 1) Game.CloseCondition()
			
			Game.SetMusicState("Mission2","Stage2")
			Game.ShowStageComplete()
			Game.SetCompletionDialog("fought")
		Game.CloseStage()
	end
	
	Game.AddStage() --8. Drive to Herman's
		Game.SetHUDIcon("hermans")
		Game.SetStageMessageIndex(({11, 9, 9})[Difficulty.Current])
		Game.SetMaxTraffic(5)
		
		Game.AddObjective("goto")
			Game.AddNPC("eddie","m2_eddie_hide")
			Game.SetDestination("m2_hermans","carsphere")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("keepbarrel",2) Game.CloseCondition()
		end
		
		Game.SetFadeOut(0.1)
		Game.SetMusicState("Mission2","Stage1")
		
		Game.SwapInDefaultCar()
		Game.SetSwapDefaultCarLocator("m2_scorp_v_carstart")
		Game.SetSwapForcedCarLocator("m2_scorp_v_hide")
		Game.SetSwapPlayerLocator("m2_bart_start")
	Game.CloseStage()

	Game.AddStage() --9. Causes the player to spawn outside of the Supervillan car 
		Game.AddObjective("timer")
			Game.SetDurationTime(1)
			Game.StayInBlack()
		Game.CloseObjective()
	Game.CloseStage()
		
	Game.AddStage("final") --10. Timer stage for Kearney to drive away 
		Game.SetStageMessageIndex(10)
	
		Game.AddObjective("timer")
			Game.SetDurationTime(4)
		Game.CloseObjective()
		
		Game.SetCompletionDialog("thisclose")
	Game.CloseStage()
Game.CloseMission()
Game.SelectMission("m0")
	Game.SetMissionResetPlayerInCar("m0_current_carstart")
	Game.SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")
	Game.UsePedGroup(0)
	
	Game.AddStage(1)
		Game.AddObjective("timer")
			Game.AddNPC("marge","m0_marge_start")
			Game.SetDurationTime(0.1)
		Game.CloseObjective()
		
		Game.SetCompletionDialog("allday","bart")
	Game.CloseStage()
	
	Game.AddStage(0)
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(10)
	    end
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
    	end
	Game.CloseStage()

	Game.AddStage(1) Game.RESET_TO_HERE()
		Game.SetHUDIcon("kwike")
		Game.SetStageMessageIndex(2)
		if not Difficulty.IsNormal then
			Game.SetStageTime(15)
	    end
		
		Game.AddObjective("goto")
			Game.SetDestination("m0_kwikemart","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
	    end
	
		Game.ShowStageComplete()
		Game.SetCompletionDialog("boring","bart")
	Game.CloseStage()

	Game.AddStage(1)
		Game.SetHUDIcon("kwike")
		Game.SetStageMessageIndex(3)
		
		Game.AddObjective("interior","neither")
			Game.SetDestination("KwikEMart","kwik_mission_doorstar") -- use name of interiors entry locator
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(2)
		Game.SetHUDIcon("apu")
		Game.SetStageMessageIndex(4)
		
		Game.AddObjective("talkto","nearest road")
			Game.SetTalkToTarget("apu", 0, -0.3, "3.0") -- 2 - door icon, "3.0" is the size of the NPC trigger area
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(3)
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_scratch_head")
			Game.SetDialogueInfo("homer","apu","congrats",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("icecream")
		Game.SetStageMessageIndex(5)

		Game.AddObjective("delivery","neither")
			Game.AddCollectible("m0_icecream","icecream_tub")
			Game.AddCollectible("m0_cola1","buzzcola")
		Game.CloseObjective()

		Game.ShowStageComplete()
	Game.CloseStage()
	
	Game.AddStage(0)
		Game.SetHUDIcon("kwike")
		Game.SetStageMessageIndex(6)
		
		Game.AddObjective("gooutside")
			Game.SetDestination("KwikEMart")
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(4)
		Game.SetHUDIcon("icecream")
		Game.SetStageMessageIndex(7)
		if Difficulty.IsNormal then
			Game.SetMaxTraffic(2)
		else
			Game.SetMaxTraffic(3)
	    end
		
		Game.AddStageVehicle("icecream","m0_icecream_carstart","NULL","missions\\l1m0\\icecream.con")
		
		Game.AddObjective("goto","neither")
			Game.SetDestination("m0_purchase_icecream","carsphere")
		Game.CloseObjective()
		
		Game.SetCompletionDialog("radar","bart")
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("icecream")
		Game.SetStageMessageIndex(8)
	    if Difficulty.IsNormal then
			Game.SetMaxTraffic(2)
		else
			Game.SetMaxTraffic(3)
            Game.SetStageTime(80)
		end

		Game.ActivateVehicle("icecream","NULL","target") Game.SetVehicleAIParams("icecream",-10,-9)
		
		Game.AddStageWaypoint("m0_icecream_route1")
		Game.AddStageWaypoint("m0_icecream_route2")
		Game.AddStageWaypoint("m0_icecream_route1")
		
		Game.AddObjective("dump","neither")
			Game.SetObjTargetVehicle("icecream")
			
			local ItemDialog = {
				[4] = {"man","bart"},
				[7] = {"homer","bart"},
			}
			for i = 1, ({8,15,18})[Difficulty.Current], 1 do
				if ItemDialog[i] ~= nil then
					Game.AddCollectible("m0_icecream" .. tostring(i), "icecream_tub", ItemDialog[i][1], ItemDialog[i][2])
				else
					Game.AddCollectible("m0_icecream" .. tostring(i), "icecream_tub")
				end
			end
			
			Game.SetCollectibleEffect("wrench_collect")

		Game.CloseObjective()

		if not Difficulty.IsNormal then
            Game.AddCondition("timeout") Game.CloseCondition()
        end
		
		Game.ShowStageComplete()
		Game.SetCompletionDialog("congrats2","bart")
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.SetHUDIcon("simpsons")
		Game.SetStageMessageIndex(9)
		if not Difficulty.IsNormal then
			Game.SetStageTime(({nil, 35, 25})[Difficulty.Current])
		end
		
		Game.AddObjective("goto","both")
			Game.SetDestination("m0_simpsonshouse","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()

		if not Difficulty.IsNormal then
            Game.AddCondition("timeout") Game.CloseCondition()
        end
	Game.CloseStage()
Game.CloseMission()
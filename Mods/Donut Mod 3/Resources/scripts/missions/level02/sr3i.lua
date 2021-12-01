Game.SelectMission("sr3")
	Game.SetDynaLoadData("l2z4.p3d;l2z1.p3d;l2r4.p3d;l2r3.p3d;")
	Game.SetMissionResetPlayerOutCar("sr3_bart_start","sr3_carstart")
	Game.UsePedGroup(0)
	
	Game.AddStage(0) Game.RESET_TO_HERE()	-- Workaround to take the player out of the car
		Game.AddStageCharacter("bart","sr3_bart_start","","current","sr3_carstart")
		Game.AddObjective("timer")
			Game.SetDurationTime(0)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage(1)
		Game.SetHUDIcon("newspapr")
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(({85,35})[Difficulty.Current])
		
		Game.AddStageCharacter("bart","sr3_bart_start","","current","sr3_carstart")
		
		Game.AddObjective("delivery")
			for i = 1, 17, 1 do
				Game.AddCollectible("sr3_newspapr"..tostring(i), "newspaper")
			end
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(2)
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		Game.SetStageTime(({50,10})[Difficulty.Current])
		
		Game.AddObjective("getin") 
			Game.SetObjTargetVehicle("current") 
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(3)
		Game.SetHUDIcon("mailbox")
		Game.SetStageMessageIndex(2)
		Game.SetStageTime(({50,25})[Difficulty.Current])
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("delivery")
			for i = 1, 6, 1 do
				Game.AddCollectible("sr3_mailbox"..tostring(i),"mailbox")
			end
		Game.CloseObjective()

		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(4)
		Game.SetHUDIcon("lbsc")
		Game.SetStageMessageIndex(3)
		Game.SetStageTime(({70,36})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("sr3_shadyarea","carsphere")
		Game.CloseObjective()

		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(5)
		Game.SetHUDIcon("mailbox")
		Game.SetStageMessageIndex(2)
		Game.SetStageTime(({90,35})[Difficulty.Current])
		Game.SetMaxTraffic(2)

		Game.AddObjective("delivery")
			for i = 7, 13, 1 do
				Game.AddCollectible("sr3_mailbox"..tostring(i),"mailbox")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(4)
		Game.SetHUDIcon("ralph")
		Game.SetStageMessageIndex(4)
		Game.SetStageTime(({90,70})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("sr3_downtown","carsphere")
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()
	
		Game.SetFadeOut(0.1)
	Game.CloseStage()
	
	Game.AddStage()
		Game.AddObjective("timer")
			Game.SetDurationTime(2)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty","sr3_patty_end")
			Game.AddNPC("selma","sr3_selma_end")
			Game.SetDialogueInfo("patty","bart","success",0)
			Game.SetDialoguePositions("sr3_patty_end","sr3_bart_end","sr3_current_end",1)
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()
Game.SelectMission("sr3")
	--Survival of the Fastest - Wait until time runs out to win.

	Game.SetMissionResetPlayerInCar("sr3_carstart")
	Game.SetDynaLoadData("l3z4.p3d;l3r3.p3d;l3r4.p3d;")
	Game.UsePedGroup(6)

	Game.AddStage(0) Game.RESET_TO_HERE()
		Game.SetHUDIcon( "elect_vd" )
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(({70,120})[Difficulty.Current])
		Game.DisableHitAndRun()
		Game.NoTrafficForStage()
		
		Game.PlacePlayerCar("current", "sr3_carstart")
		Game.PutMFPlayerInCar()              

		Game.StartCountdown("count")
			Game.AddToCountdownSequence("1", 1000) 
			Game.AddToCountdownSequence("1", 1000)
			Game.AddToCountdownSequence("1", 900) 
			Game.AddToCountdownSequence("GO", 400) 

		Game.AddStageVehicle("marge_v","sr3_AI_carstart1","chase","missions\\l3sr3\\sr3_car1.con","marge")
		Game.AddStageVehicle("otto_v","sr3_AI_carstart2","chase","missions\\l3sr3\\sr3_car4.con","otto")
		Game.AddStageVehicle("moe_v","sr3_AI_carstart3","chase","missions\\l3sr3\\sr3_car2.con","moe")
		Game.AddStageVehicle("cNerd","sr3_AI_carstart4","chase","missions\\l3sr3\\sr3_car5.con","male2")
		if Difficulty.IsHellfish then
			Game.AddStageVehicle("cFire_v","sr3_AI_carstart5","chase","missions\\l3sr3\\sr3_car3.con","male1")
		end

		--The Countdown takes away three seconds from duration timer.
		Game.AddObjective("timer")
			Game.SetDurationTime(({73,123})[Difficulty.Current])
		Game.CloseObjective()
		
		Game.AddCondition("outofvehicle")
			Game.SetCondTime(0)
		Game.CloseCondition()
		
		Game.SetFadeOut(0.1)
	Game.CloseStage()

	Game.AddStage(1) -- Stay in black stage.
		Game.AddObjective("timer")
			Game.StayInBlack()
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()


	Game.AddStage(1,"final")
		Game.AddObjective("dialogue")
			Game.AddNPC("patty", "sr3_patty")
			Game.AddNPC("selma", "sr3_selma")
			Game.SetConversationCam( 0, "npc_far" )
			Game.SetDialogueInfo("patty","lisa","success",0)
			Game.SetDialoguePositions("sr3_patty","sr3_lisa_end","sr3_carstart")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
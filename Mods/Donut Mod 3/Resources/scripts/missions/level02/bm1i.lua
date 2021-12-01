Game.SelectMission("bm1")
	Game.SetMissionResetPlayerInCar("bm1_current_carstart")
	Game.SetDynaLoadData("l2z3.p3d;l2r2.p3d;l2r3.p3d;")
	Game.UsePedGroup(0)
	
	Game.AddStage(3) Game.RESET_TO_HERE()
		Game.SetHUDIcon("blood")
		Game.SetStageMessageIndex(1)
		Game.SetStageTime(({10,5})[Difficulty.Current])
		Game.SetMaxTraffic(5)
	
		Game.AddStageCharacter("bart","NULL","","current","bm1_current_carstart")
		
		Game.AddObjective("goto")
			Game.SetDestination("bm1_bloodbag1","bloodbag")
			Game.TurnGotoDialogOff()
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.SetCompletionDialog("vampire")
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("moes")
		Game.SetStageTime(({45,25})[Difficulty.Current])
		Game.SetStageMessageIndex(2)
		
		Game.AddObjective("goto")
			Game.SetDestination("bm1_moes","carsphere")
			Game.AddSafeZone("bm1_moes_door",30)
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(1)
		Game.SetHUDIcon("moes")
		Game.SetStageMessageIndex(3)
		
		Game.AddObjective("interior")
			Game.SetDestination("moe1","moes_mission_doorstar")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("moe")
		Game.SetStageMessageIndex(4)
		
		Game.AddObjective("talkto")
			Game.AddNPC("moe","bm1_moe_start")
			Game.SetTalkToTarget("moe",0,0,"2.0")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.SetDialogueInfo("bart","moe","goat",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(3)
		Game.SetHUDIcon("blood")
		Game.SetStageMessageIndex(5)
		
		Game.AddObjective("goto")
			Game.SetDestination("bm1_bloodbag2","bloodbag")
		Game.CloseObjective()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		Game.SetStageTime(({30,10})[Difficulty.Current])
		
		Game.AddObjective("getin","neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("kburger")
		Game.SetStageMessageIndex(6)
		Game.SetStageTime(({30,14})[Difficulty.Current])
		Game.SetMaxTraffic(5)
		
		Game.AddObjective("goto")
			Game.AddNPC("teen","bm1_svt_start")
			Game.SetDestination("bm1_krustyburger","carsphere")
			Game.AddSafeZone("bm1_svt_start",30)
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
		
		Game.SetStageMusicAlwaysOn()
	Game.CloseStage()
		
	Game.AddStage(0)
		Game.SetHUDIcon("svt")
		Game.SetStageMessageIndex(7)
		
		Game.AddObjective("talkto")
			Game.AddNPC("teen","bm1_svt_start")
			Game.SetTalkToTarget("teen",0,0)
			Game.AddSafeZone("bm1_svt_start",30)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0)
		Game.AddObjective("dialogue")
			Game.SetDialogueInfo("bart","teen","fries",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(3)
		Game.SetHUDIcon("blood")
		Game.SetStageMessageIndex(5)
		
		Game.AddObjective("goto")
			Game.SetDestination("bm1_bloodbag3","bloodbag")
		Game.CloseObjective()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0)
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		Game.SetStageTime(({30,10})[Difficulty.Current])
		
		Game.AddObjective("getin","neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("hospital")
		Game.SetStageMessageIndex(8)
		Game.SetStageTime(({45,13})[Difficulty.Current])
		
		Game.AddStageVehicle("ambul","bm1_ambul_carstart","NULL","missions\\l2bm1\\ambul.con")
	
		Game.AddObjective("goto")
			Game.SetDestination("bm1_hospital","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("ambul")
		Game.SetStageMessageIndex(9)
		Game.SetStageTime(({140,70})[Difficulty.Current])
		
		Game.ActivateVehicle("ambul","NULL","evade")
		
		for i = 1, 7, 1 do
			Game.AddStageWaypoint("bm1_ambul_waypoint"..tostring(i))
		end
		
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("ambul")
			for i = 1, ({7,10})[Difficulty.Current], 1 do
				Game.AddCollectible("bm1_ambul_bloodbag"..tostring(i),"bloodbag")
			end
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("veterans")
		Game.SetStageMessageIndex(10)
		Game.SetStageTime(({70,50})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.AddNPC("grandpa","bm1_grampa_sd")
			Game.SetDestination("bm1_veterans","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage(0)
		Game.SetHUDIcon("grampa")	
		Game.SetStageMessageIndex(11)
		
		Game.AddObjective("talkto","neither")
			Game.AddNPC("grandpa","bm1_grampa_sd")
			Game.SetTalkToTarget("grandpa",0,0.2)
		Game.CloseObjective()
	Game.CloseStage()
	
	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.SetDialogueInfo("bart","grandpa","warm",0)
			Game.SetCamBestSide("bm1_bestside")
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
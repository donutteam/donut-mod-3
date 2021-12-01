Game.SelectMission("m7")
	Game.SetMissionResetPlayerInCar("m7_current_carstart2")
	Game.SetDynaLoadData("l2z4.p3d;l2r4.p3d;l2z1.p3d;")
	Game.UsePedGroup(6)

	Game.AddStage() Game.RESET_TO_HERE()
		Game.SetHUDIcon("celph_v")
		Game.SetStageMessageIndex(5)
		Game.SetStageTime(({75,90})[Difficulty.Current])
		Game.SetMaxTraffic(({2,4})[Difficulty.Current])
		
		Game.StartCountdown("count")
		
		Game.AddStageCharacter("bart","NULL","","current","m7_current_carstart2")
		Game.AddStageVehicle("cCellA","m7_cCellA_carstart","evade","missions\\l2m7\\cCellA" .. tostring(Difficulty.Current).. ".con")
		
		for i = 1, 5, 1 do
			Game.AddStageWaypoint("m7_cCellA_waypoint" .. tostring(i))
		end
		
		Game.AddObjective("dump")
			Game.SetObjTargetVehicle("cCellA")
			for i = 1, ({4,8})[Difficulty.Current], 1 do
				Game.AddCollectible("m7_cCellA_iphone"..tostring(i), "iphone")
			end
			Game.AddCollectible("m7_cCellA_newspapr","newspaper")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("townhall")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({75,45})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("m7_townhall","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cellstnd")
		Game.SetStageMessageIndex(8)
		Game.SetStageTime(({90,55})[Difficulty.Current])
		
		Game.AddObjective("delivery")
			for i = 1, 16, 1 do
				Game.AddCollectible("m7_cellstnd"..tostring(i),"stand_cellphone")
			end
		Game.SetCollectibleEffect("stand_cellphone_explosion")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("moes")
		Game.SetStageMessageIndex(9)
		Game.SetStageTime(({35,18})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("m7_moes","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cellstnd")
		Game.SetStageMessageIndex(10)
		Game.SetStageTime(({100,40})[Difficulty.Current])
		
		Game.AddObjective("delivery")
			for i = 17, ({29,29})[Difficulty.Current], 1 do
				Game.AddCollectible("m7_cellstnd"..tostring(i),"stand_cellphone")
			end
		Game.SetCollectibleEffect("stand_cellphone_explosion")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("trynsave")
		Game.SetStageMessageIndex(11)
		Game.SetStageTime(({40,18})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("m7_trynsave","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cellstnd")
		Game.SetStageMessageIndex(12)
		Game.SetStageTime(({80,25})[Difficulty.Current])
		
		Game.AddObjective("delivery")
			for i = 30, 40, 1 do
				Game.AddCollectible("m7_cellstnd"..tostring(i),"stand_cellphone")
			end
		Game.SetCollectibleEffect("stand_cellphone_explosion")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("downtown")
		Game.SetStageMessageIndex(13)
		Game.SetStageTime(({70,55})[Difficulty.Current])
		
		Game.AddObjective("goto")
			Game.SetDestination("m7_downtown2","carsphere")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()
	
	Game.AddStage()
		Game.SetHUDIcon("cellstnd")
		Game.SetStageMessageIndex(14)
		Game.SetStageTime(({170,62})[Difficulty.Current])
		
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("cCellB","m7_cCellB_carstart","chase","missions\\l2m7\\cCellB.con")
			Game.AddStageVehicle("cCellC","m7_cCellC_carstart","chase","missions\\l2m7\\cCellC.con")
			Game.AddStageVehicle("cCellD","m7_cCellD_carstart","chase","missions\\l2m7\\cCellD.con")
		end
		
		Game.AddObjective("delivery")
			for i = 41, 62, 1 do
				Game.AddCollectible("m7_cellstnd"..tostring(i),"stand_cellphone")
			end
		Game.SetCollectibleEffect("stand_cellphone_explosion")
		Game.CloseObjective()
		
		Game.AddCondition("timeout")	Game.CloseCondition()
	Game.CloseStage()

	Game.AddStage()
		Game.SetStageTime(({60,30})[Difficulty.Current])

		Game.SetHUDIcon("stadium")
		Game.SetStageMessageIndex(15)

		Game.AddStageVehicle("drone","m7_drone_carstart","NULL","missions\\l2m7\\drone"..tostring(Difficulty.Current)..".con")


		Game.AddObjective("goto","neither")
			Game.SetDestination("m7_stadium2","carsphere")
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
		
	Game.AddStage(0)
		Game.SetStageTime(180) -- There's more health on Hellfish

		Game.SetHUDIcon("drone")
		Game.SetStageMessageIndex(16)
		
		Game.ActivateVehicle("drone","NULL","evade")
		Game.SetVehicleAIParams("drone",-10,-9)
		
		for i = 1, 9, 1 do
			Game.AddStageWaypoint("m7_drone_waypoint"..tostring(i))
		end

		Game.AddObjective("destroy","neither")
			Game.SetObjTargetVehicle("drone")
		Game.CloseObjective()

		Game.AddCondition("timeout") Game.CloseCondition()
	Game.CloseStage()
		
	Game.AddStage()
		Game.SetHUDIcon("stadium")
		Game.SetStageMessageIndex(17)
		
		Game.AddObjective("goto","both")
			Game.AddNPC("frink","m7_frink_start")
			Game.SetDestination("m7_stadium","carsphere")
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage()
		Game.SetHUDIcon("frink")
		Game.SetStageMessageIndex(2)
		
		Game.AddObjective("talkto","neither")
			Game.AddNPC("frink","m7_frink_start")
			Game.SetTalkToTarget("frink",0,0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage("final")
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1,0)
			Game.AmbientAnimationRandomize(0,0)
			Game.SetConversationCam(0,"npc_near")
			Game.SetConversationCam(1,"pc_far")
			Game.SetConversationCam(2,"npc_near")
			Game.AddAmbientNpcAnimation("dialogue_hands_in_air")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_thinking")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_yes")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("bart","frink","smash",0)
		Game.CloseObjective()
	Game.CloseStage()
Game.CloseMission()
Game.SelectMission("m2")
	Game.SetMissionResetPlayerInCar("m2_current_carstart")
	Game.SetDynaLoadData("l3z1.p3d;l3r1.p3d;l3r5.p3d;l3r5_dam.p3d;")
	Game.UsePedGroup(0)

	Game.AddStage(0) -- Get into your car!
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(10)
		end
		
		Game.AddObjective("getin", "neither")
			Game.AddNPC("milhouse", "m2_milhouse_sign")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()

	Game.AddStage(5) Game.RESET_TO_HERE() -- Drive to the Springfield Sign.	
		Game.SetHUDIcon(({"spsign","spft"})[Difficulty.Current])
		Game.SetStageMessageIndex(({3,3})[Difficulty.Current])
		Game.SetStageTime(({60,45})[Difficulty.Current])
		Game.SetMaxTraffic(5)
		
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("cFire_v","m2_cFire_v_carstart","NULL","missions\\l3m2\\cFire_v.con", "male1")
			Game.AddStageVehicle("cFire_v2","m2_cFire_v2_carstart","NULL","missions\\l3m2\\cFire_v.con", "male1")
		end
		
		Game.AddObjective("goto")
			Game.AddNPC("milhouse","m2_milhouse_sign")
			Game.SetDestination("m2_springfieldsign","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(5) -- Talk to Milhouse.
		Game.SetHUDIcon("milhouse")		
		Game.SetStageMessageIndex(4)
		Game.SetMaxTraffic(0) --Traffic disabled here so Lisa's car cannot be pushed. This is re-enabled in the "Drive to the Planet Hype" stage with the Game.SetMaxTraffic command.
		
		Game.AddObjective("talkto", "neither")
			Game.AddNPC("milhouse","m2_milhouse_sign")
			Game.AddObjectiveNPCWaypoint("milhouse", "m2_milhouse_walk2")
			Game.SetTalkToTarget("milhouse", 0, -0.5)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0) -- Milhouse Dialog Stage 1.
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)
			Game.SetConversationCam(0, "pc_far")
			Game.SetConversationCam(1, "npc_far")
			Game.SetConversationCam(2, "pc_far")
			Game.SetConversationCam(3, "npc_far")
			Game.SetConversationCam(4, "pc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_scratch_head")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_yes")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("none")
			Game.SetCamBestSide("m2_weasel_bestside")
			Game.SetDialogueInfo("lisa","milhouse","weasel",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0) -- Get into your car!
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(10)
		end
		
		Game.AddObjective("getin", "neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()

	Game.AddStage(5) -- Drive to the Planet Hype.
		Game.SetHUDIcon(({"planethy","planetft"})[Difficulty.Current])
		Game.SetStageMessageIndex(({5,10})[Difficulty.Current])
		Game.SetStageTime(({70,55})[Difficulty.Current])
		Game.SetMaxTraffic(5) -- This is used to add the traffic back.
		
		if not Difficulty.IsNormal then
			Game.AddStageVehicle("cFire_v","m2_cFire_v_carstart2","NULL","missions\\l3m2\\cFire_v.con", "male1")
			Game.AddStageVehicle("cFire_v2","m2_cFire_v2_carstart2","NULL","missions\\l3m2\\cFire_v.con", "male1")
		end 
		
		Game.AddObjective("goto")
			Game.AddNPC("milhouse","m2_milhouse_planethype")
			Game.SetDestination("m2_planethype","carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0) -- Talk to Milhouse.
		Game.SetHUDIcon("milhouse")
		Game.SetStageMessageIndex(4)
		
		Game.AddObjective("talkto", "neither")
			Game.AddNPC("milhouse","m2_milhouse_planethype")
			Game.AddObjectiveNPCWaypoint( "milhouse", "m2_milhouse_walk3")
			Game.SetTalkToTarget("milhouse", 0, -0.5)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0) -- Milhouse Dialog Stage 2.
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)
			Game.SetConversationCam(0, "pc_far")
			Game.SetConversationCam(1, "npc_far")
			Game.SetConversationCam(2, "pc_far")
			Game.SetConversationCam(3, "npc_far")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_thinking")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_in_air")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")
			Game.SetDialogueInfo("lisa","milhouse","noiseland",0)
			Game.SetCamBestSide("m2_weasel_bestside")
		Game.CloseObjective()
		
		Game.SetFadeOut(0.1)
	Game.CloseStage()
		
	Game.AddStage(0) -- Get into your car!
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		Game.SetMaxTraffic(2)
		if not Difficulty.IsNormal then
			Game.SetStageTime(10)
		end
		
		Game.AddStageCharacter("lisa","m2_lisa_out","","current","m2_current_carstart2")
		Game.AddStageVehicle("thrill_v","m2_thrill_v_carstart","NULL","missions\\l3m2\\thrill_v.con", "milhouse")
		Game.AddStageVehicle("firebird","m2_firebird_carstart","NULL","missions\\l3m2\\firebird.con", "apu")
		
		Game.AddObjective("getin")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then		
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()

	Game.AddStage(0) -- Follow Milhouse to Wall E. Weasel's
		Game.SetHUDIcon("thrill_v")
		Game.SetStageMessageIndex(({6,11})[Difficulty.Current])
		Game.SetMaxTraffic(2)
		
		Game.ActivateVehicle("thrill_v","NULL",({"target","evade","evade"})[Difficulty.Current])	
		Game.SetVehicleAIParams("thrill_v", 0, 1) 
		
		for i = 1, 3, 1 do
			Game.AddStageWaypoint("m2_waypoint" .. tostring(i))
		end
		
		Game.AddObjective("follow","neither")
			Game.SetObjTargetVehicle("thrill_v")
		Game.CloseObjective()
		
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, ({180,100})[Difficulty.Current])
			Game.SetCondTargetVehicle("thrill_v")
		Game.CloseCondition()
		
		Game.SetFadeOut(1.0)
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(0) -- Talk to Milhouse for the last time.
		Game.SetHUDIcon("milhouse")
		Game.SetStageMessageIndex(4)
		Game.SetMaxTraffic(2)
		
		Game.AddStageCharacter("lisa","m2_lisa_out2","","current","m2_current_carstart3")
		Game.AddStageVehicle("thrill_v","m2_thrill_v_walle","NULL","missions\\l3m2\\thrill_v.con", "milhouse")
		
		Game.AddObjective("talkto","neither")
			Game.AddNPC("milhouse","m2_milhouse_walle")
			Game.RemoveDriver("milhouse")
			Game.AddObjectiveNPCWaypoint( "milhouse", "m2_milhouse_walk4" )
			Game.SetTalkToTarget("milhouse", 0, -0.5)
		Game.CloseObjective()
		
	Game.CloseStage()

	Game.AddStage(0) -- Milhouse Dialog Stage 3.
		Game.AddObjective("dialogue")
			Game.AmbientAnimationRandomize(1, 0)
			Game.AmbientAnimationRandomize(0, 0)
			Game.SetConversationCam(0, "npc_far")
			Game.SetConversationCam(1, "pc_far")
			Game.SetConversationCam(2, "npc_far")
			Game.SetConversationCam(3, "pc_far")
			Game.SetConversationCam(4, "npc_far")
			Game.SetConversationCam(5, "pc_far")
			Game.AddAmbientNpcAnimation("dialogue_shake_hand_in_air")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_scratch_head")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientNpcAnimation("dialogue_hands_in_air")
			Game.AddAmbientNpcAnimation("none")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_hands_on_hips")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_cross_arms")
			Game.AddAmbientPcAnimation("none")
			Game.AddAmbientPcAnimation("dialogue_thinking")
			Game.SetCamBestSide("m2_walle_bestside")
			Game.SetDialogueInfo("lisa","milhouse","sign",0)
		Game.CloseObjective()
	Game.CloseStage()

	Game.AddStage(0) -- Get into your car!
		Game.SetHUDIcon("car_icon")
		Game.SetStageMessageIndex(0)
		if not Difficulty.IsNormal then
			Game.SetStageTime(10)
		end
		
		Game.AddObjective("getin", "neither")
			Game.SetObjTargetVehicle("current")
		Game.CloseObjective()
		
		if not Difficulty.IsNormal then
			Game.AddCondition("timeout") Game.CloseCondition()
		end
	Game.CloseStage()

	Game.AddStage(5) -- Find Apu.
		Game.SetHUDIcon("apu")
		Game.SetStageMessageIndex(7)
		Game.SetStageTime(({30,10})[Difficulty.Current])
		Game.SetMaxTraffic(2)
		
		Game.AddObjective("goto")
			Game.SetDestination("m2_gasstation", "carsphere")
			Game.SetCollectibleEffect("wrench_collect")
		Game.CloseObjective()
		
		Game.AddCondition("timeout") Game.CloseCondition()
		
		Game.ShowStageComplete()
	Game.CloseStage()

	Game.AddStage(1) -- Follow Apu and collect his personal items.
		Game.SetHUDIcon("firebird")
		Game.SetStageMessageIndex(({8,12})[Difficulty.Current])
		Game.SetMaxTraffic(2) --Traffic is set this low in order to prevent the game from crashing when you get a Hit & Run.
		
		Game.ActivateVehicle("firebird","NULL","evade")
		
		for i = 4, 20, 1 do
			Game.AddStageWaypoint("m2_waypoint" .. tostring(i))
		end
		--Game.AddStageWaypoint("m2_waypoint18")
		--Game.AddStageWaypoint("m2_waypoint17")
		
		if Difficulty.IsNormal then
			Game.AddObjective("follow","neither")
				Game.SetObjTargetVehicle("firebird")
			Game.CloseObjective()
		else
			Game.AddObjective("dump")
				Game.SetObjTargetVehicle("firebird")
				Game.AddCollectible("m2_item1","buzzcola")
				Game.AddCollectible("m2_item2","pills_aggroleve")
				Game.AddCollectible("m2_item3","icecream_tub")
				Game.AddCollectible("m2_item4","pills_trucker")
				Game.AddCollectible("m2_item5","cooler")
				Game.SetCollectibleEffect("bonestorm_explosion")
				Game.BindCollectibleTo(0, 0)
				Game.BindCollectibleTo(1, 2)
				Game.BindCollectibleTo(2, 3)
				Game.BindCollectibleTo(3, 12)
				Game.BindCollectibleTo(4, 14)
			Game.CloseObjective()
		end
		
		Game.AddCondition("followdistance")
			Game.SetFollowDistances(0, ({250,200})[Difficulty.Current])
			Game.SetCondTargetVehicle("firebird")  
		Game.CloseCondition()
		
		Game.SetIrisWipe(0.1)
	Game.CloseStage()

	Game.AddStage("final") -- Finally at the Krusty Burger!
		Game.AddObjective("timer")
			Game.AddNPC("apu","m2_apu_end")
			Game.RemoveDriver("apu")
			
			Game.AddStageVehicle("firebird","m2_apu_v_carstart","NULL","missions\\l3m2\\apu_v.con")
			Game.AddStageCharacter("lisa","m2_lisa_end","","current","m2_current_end")
			Game.SetDurationTime(1)
		Game.CloseObjective()
	Game.CloseStage()

Game.CloseMission()
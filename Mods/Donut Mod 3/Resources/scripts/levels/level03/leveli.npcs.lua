Game.AddPurchaseCarReward("gil","gil","npd","shop_npc1",1.3,"shop_car1")
Game.AddPurchaseCarReward("simpson","otto","npd","shop_npc2",1.3,"shop_car2")

Game.AddNPCCharacterBonusMission("milhouse","npd","sr1_milhouse","sr1","checkered","intro",0,"checkeredfinish")
	Game.SetBonusMissionDialoguePos("sr1","sr1_lisapos","sr1_milhouse","sr1_lisacar")
	Game.SetConversationCam(0,"pc_far","sr1")
	Game.SetConversationCam(1,"npc_far","sr1")
	Game.ClearAmbientAnimations("sr1")
	Game.AddAmbientNpcAnimation("none","sr1")
	Game.AddAmbientNpcAnimation("dialogue_no","sr1")
	Game.AddAmbientPcAnimation("dialogue_hands_on_hips","sr1")
	Game.AddAmbientPcAnimation("none","sr1")
	Game.SetCamBestSide("sr1_cutcam","sr1")

Game.AddNPCCharacterBonusMission("nelson","npd","sr2_nelson","sr2","checkered","intro",0,"checkeredfinish")
	Game.SetBonusMissionDialoguePos("sr2","sr2_lisapos2","sr2_nelson","sr2_lisapos")
	Game.SetConversationCam(0,"pc_far","sr2")
	Game.SetConversationCam(1,"npc_far","sr2")
	Game.ClearAmbientAnimations("sr2")
	Game.AddAmbientNpcAnimation("none","sr2")
	Game.AddAmbientNpcAnimation("dialogue_hands_on_hips","sr2")
	Game.AddAmbientPcAnimation("dialogue_scratch_head","sr2")
	Game.AddAmbientPcAnimation("none","sr2")
	Game.SetCamBestSide("sr2_bestside","sr2")

Game.AddNPCCharacterBonusMission("ralph","npd","sr3_ralph","sr3","checkered","intro",0,"checkeredfinish")
	Game.SetBonusMissionDialoguePos("sr3","lisa_ralphtalk","sr3_ralph","sr3_dialogpos")
	Game.SetConversationCam(1,"pc_far","sr3")
	Game.SetConversationCam(0,"npc_far","sr3")
	Game.SetConversationCam(1,"pc_far","sr3")
	Game.ClearAmbientAnimations("sr3")
	Game.AddAmbientNpcAnimation("none","sr3")
	Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture","sr3")
	Game.AddAmbientNpcAnimation("none","sr3")
	Game.AddAmbientPcAnimation("dialogue_thinking","sr3")
	Game.AddAmbientPcAnimation("none","sr3")
	Game.AddAmbientPcAnimation("dialogue_yes","sr3")
	Game.SetCamBestSide("sr3_bestside","sr3")

Game.AddNPCCharacterBonusMission("louie","npd","sr4_louie","gr1","dice","intro",0)

if IsModEnabled("ReplayableBonusMissions") then
	Game.AddNPCCharacterBonusMission("skinner","npd","bm1_skinner","bm1","exclamation","tragedy",0)
else
	Game.AddNPCCharacterBonusMission("skinner","npd","bm1_skinner","bm1","exclamation","tragedy",1)
end	
	Game.AddBonusMissionNPCWaypoint("skinner","bm1_skinner_walk1")
	--Game.SetBonusMissionDialoguePos("bm1","bm_lisa","bm_skinner_walk_1","bm_lisacar")
	Game.ClearAmbientAnimations("bm1")
	Game.SetConversationCam(0,"pc_far","bm1")
	Game.SetConversationCam(1,"npc_near","bm1")
	Game.SetConversationCam(2,"pc_far","bm1")
	Game.SetConversationCam(3,"npc_near","bm1")
	Game.AddAmbientNpcAnimation("none","bm1")
	Game.AddAmbientNpcAnimation("dialogue_shaking_fist","bm1")
	Game.AddAmbientNpcAnimation("none","bm1")
	Game.AddAmbientNpcAnimation("dialogue_cross_arms","bm1")
	Game.AddAmbientPcAnimation("dialogue_hands_in_air","bm1")
	Game.AddAmbientPcAnimation("none","bm1")
	Game.AddAmbientPcAnimation("dialogue_hands_on_hips","bm1")
	Game.AddAmbientPcAnimation("none","bm1")
	Game.SetCamBestSide("bm1_bestside","bm1")
	
Game.AddAmbientCharacter("teen","ambient_teen",0)

Game.AddAmbientCharacter("cbg","ambient_cbg",0)

Game.AddAmbientCharacter("dolph","ambient_dolph",0)
	Game.AddAmbientNPCWaypoint("dolph","ambient_dolph_walk1")
	Game.AddAmbientNPCWaypoint("dolph","ambient_dolph_walk2")
	Game.AddAmbientNPCWaypoint("dolph","ambient_dolph_walk1")
	
Game.AddAmbientCharacter("smithers","ambient_smithers",0)
	Game.AddAmbientNPCWaypoint("smithers","ambient_smithers_walk1")
	Game.AddAmbientNPCWaypoint("smithers","ambient_smithers_walk2")
	Game.AddAmbientNPCWaypoint("smithers","ambient_smithers_walk3")
	Game.AddAmbientNPCWaypoint("smithers","ambient_smithers_walk2")
	Game.AddAmbientNPCWaypoint("smithers","ambient_smithers_walk1")

Game.AddAmbientCharacter("captain","ambient_captain",1.3)
	Game.AddAmbientNPCWaypoint("captain","ambient_captain_walk1")

Game.AddAmbientCharacter("jimbo","ambient_jimbo",0)
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk1")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk2")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk3")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk4")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk5")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk4")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk3")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk2")
	Game.AddAmbientNPCWaypoint("jimbo","ambient_jimbo_walk1")

Game.AddAmbientCharacter("barney","ambient_barney",0)
	Game.AddAmbientNPCWaypoint("barney","ambient_barney_walk1")
	Game.AddAmbientNPCWaypoint("barney","ambient_barney_walk2")
	Game.AddAmbientNPCWaypoint("barney","ambient_barney_walk1")
	
Game.AddAmbientCharacter("kenny","ambient_kenny",1.3)
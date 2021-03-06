Game.AddPurchaseCarReward("gil","gil","npd","shop_npc1",1.3,"shop_car1")
Game.AddPurchaseCarReward("simpson","homer","npd","shop_npc2",1.3,"shop_car2")

Game.AddNPCCharacterBonusMission("milhouse","npd","sr1_milhouse","sr1","checkered","intro",0,"checkeredfinish")
	Game.SetConversationCam(0,"pc_far","sr1")
	Game.SetConversationCam(1,"npc_far","sr1")
	Game.AddAmbientNpcAnimation("none","sr1")
	Game.AddAmbientNpcAnimation("dialogue_no","sr1")
	Game.AddAmbientPcAnimation("dialogue_hands_on_hips","sr1")
	Game.AddAmbientPcAnimation("none","sr1")

Game.AddNPCCharacterBonusMission("nelson","npd","sr2_nelson","sr2","checkered","intro",0,"checkeredfinish")
	Game.SetConversationCam(0,"pc_far","sr2")
	Game.SetConversationCam(1,"npc_far","sr2")
	Game.AddAmbientNpcAnimation("none","sr2")
	Game.AddAmbientNpcAnimation("dialogue_shaking_fist","sr2")
	Game.AddAmbientPcAnimation("dialogue_scratch_head","sr2")
	Game.AddAmbientPcAnimation("none","sr2")

Game.AddNPCCharacterBonusMission("ralph","npd","sr3_ralph","sr3","checkered","intro",0,"checkeredfinish")
	Game.SetConversationCam(0,"npc_far","sr3")
	Game.SetConversationCam(1,"pc_far","sr3")
	Game.AddAmbientNpcAnimation("dialogue_open_arm_hand_gesture","sr3")
	Game.AddAmbientNpcAnimation("none","sr3")
	Game.AddAmbientPcAnimation("none","sr3")
	Game.AddAmbientPcAnimation("dialogue_yes","sr3")
	
Game.AddNPCCharacterBonusMission("louie","npd","sr4_louie","gr1","dice","intro",0)

if IsModEnabled("ReplayableBonusMissions") then
	Game.AddNPCCharacterBonusMission("grandpa","npd","bm1_grampa","bm1","exclamation","incontinent",0)
else
	Game.AddNPCCharacterBonusMission("grandpa","npd","bm1_grampa","bm1","exclamation","incontinent",1,"exclamation_shadow")
end
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
	Game.SetCamBestSide("bm1_bestside","sr3")

Game.AddAmbientCharacter("patty","ambient_patty",2.0)

Game.AddAmbientCharacter("moe","ambient_moe",2.0)

Game.AddAmbientCharacter("moleman","ambient_moleman",0)
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk1")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk2")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk4")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk3")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk5")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk4")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk3")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk2")
	Game.AddAmbientNPCWaypoint("moleman","ambient_moleman_walk1")

Game.AddAmbientCharacter("jasper","ambient_jasper",0)
	Game.AddAmbientNPCWaypoint("jasper","ambient_jasper_walk1")
	Game.AddAmbientNPCWaypoint("jasper","ambient_jasper_walk2")
	Game.AddAmbientNPCWaypoint("jasper","ambient_jasper_walk3")
	Game.AddAmbientNPCWaypoint("jasper","ambient_jasper_walk2")
	Game.AddAmbientNPCWaypoint("jasper","ambient_jasper_walk1")

Game.AddAmbientCharacter("lenny","ambient_lenny",0)
	Game.AddAmbientNPCWaypoint("lenny","ambient_lenny_walk1")
	Game.AddAmbientNPCWaypoint("lenny","ambient_lenny_walk2")
	Game.AddAmbientNPCWaypoint("lenny","ambient_lenny_walk1")

Game.AddAmbientCharacter("eddie","ambient_eddie",0)
	Game.AddAmbientNPCWaypoint("eddie","ambient_eddie_walk1")
	Game.AddAmbientNPCWaypoint("eddie","ambient_eddie_walk2")
	Game.AddAmbientNPCWaypoint("eddie","ambient_eddie_walk1")

Game.AddAmbientCharacter("lou","ambient_lou",0)
	Game.AddAmbientNPCWaypoint("lou","ambient_lou_walk1")
	Game.AddAmbientNPCWaypoint("lou","ambient_lou_walk2")
	Game.AddAmbientNPCWaypoint("lou","ambient_lou_walk3")
	Game.AddAmbientNPCWaypoint("lou","ambient_lou_walk4")
	Game.AddAmbientNPCWaypoint("lou","ambient_lou_walk3")
	Game.AddAmbientNPCWaypoint("lou","ambient_lou_walk2")
	Game.AddAmbientNPCWaypoint("lou","ambient_lou_walk1")
	
Game.AddAmbientCharacter("chris","ambient_chris",0)
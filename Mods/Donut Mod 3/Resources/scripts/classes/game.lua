local function HandleMFKFunction(FunctionName, ...)
	local Args = ""
	local first = true
	for k,v in pairs({...}) do	
		if v ~= nil then
			if first then
				first = false
			else
				Args = Args .. ","
			end
			Args = Args .. "\""
			Args = Args  ..  tostring(v)
			Args = Args .. "\"" 
		end
	end
	
	Output(FunctionName .. "(" .. Args .. ");")
end

Game = {}

function Game.SetMass(...)
	HandleMFKFunction("SetMass", ...)
end

function Game.SetGasScale(...)
	HandleMFKFunction("SetGasScale", ...)
end

function Game.SetHighSpeedGasScale(...)
	HandleMFKFunction("SetHighSpeedGasScale", ...)
end

function Game.SetGasScaleSpeedThreshold(...)
	HandleMFKFunction("SetGasScaleSpeedThreshold", ...)
end

function Game.SetSlipGasScale(...)
	HandleMFKFunction("SetSlipGasScale", ...)
end

function Game.SetBrakeScale(...)
	HandleMFKFunction("SetBrakeScale", ...)
end

function Game.SetTopSpeedKmh(...)
	HandleMFKFunction("SetTopSpeedKmh", ...)
end

function Game.SetMaxWheelTurnAngle(...)
	HandleMFKFunction("SetMaxWheelTurnAngle", ...)
end

function Game.SetHighSpeedSteeringDrop(...)
	HandleMFKFunction("SetHighSpeedSteeringDrop", ...)
end

function Game.SetTireGrip(...)
	HandleMFKFunction("SetTireGrip", ...)
end

function Game.SetNormalSteering(...)
	HandleMFKFunction("SetNormalSteering", ...)
end

function Game.SetSlipSteering(...)
	HandleMFKFunction("SetSlipSteering", ...)
end

function Game.SetEBrakeEffect(...)
	HandleMFKFunction("SetEBrakeEffect", ...)
end

function Game.SetCMOffsetX(...)
	HandleMFKFunction("SetCMOffsetX", ...)
end

function Game.SetCMOffsetY(...)
	HandleMFKFunction("SetCMOffsetY", ...)
end

function Game.SetCMOffsetZ(...)
	HandleMFKFunction("SetCMOffsetZ", ...)
end

function Game.SetSuspensionLimit(...)
	HandleMFKFunction("SetSuspensionLimit", ...)
end

function Game.SetSpringK(...)
	HandleMFKFunction("SetSpringK", ...)
end

function Game.SetDamperC(...)
	HandleMFKFunction("SetDamperC", ...)
end

function Game.SetSuspensionYOffset(...)
	HandleMFKFunction("SetSuspensionYOffset", ...)
end

function Game.SetHitPoints(...)
	HandleMFKFunction("SetHitPoints", ...)
end

function Game.SetBurnoutRange(...)
	HandleMFKFunction("SetBurnoutRange", ...)
end

function Game.SetMaxSpeedBurstTime(...)
	HandleMFKFunction("SetMaxSpeedBurstTime", ...)
end

function Game.SetDonutTorque(...)
	HandleMFKFunction("SetDonutTorque", ...)
end

function Game.SetSlipSteeringNoEBrake(...)
	HandleMFKFunction("SetSlipSteeringNoEBrake", ...)
end

function Game.SetSlipEffectNoEBrake(...)
	HandleMFKFunction("SetSlipEffectNoEBrake", ...)
end

function Game.SetWeebleOffset(...)
	HandleMFKFunction("SetWeebleOffset", ...)
end

function Game.SetWheelieRange(...)
	HandleMFKFunction("SetWheelieRange", ...)
end

function Game.SetWheelieOffsetY(...)
	HandleMFKFunction("SetWheelieOffsetY", ...)
end

function Game.SetWheelieOffsetZ(...)
	HandleMFKFunction("SetWheelieOffsetZ", ...)
end

function Game.SetShadowAdjustments(...)
	HandleMFKFunction("SetShadowAdjustments", ...)
end

function Game.SetShininess(...)
	HandleMFKFunction("SetShininess", ...)
end

function Game.SetDriver(...)
	HandleMFKFunction("SetDriver", ...)
end

function Game.SetGamblingOdds(...)
	HandleMFKFunction("SetGamblingOdds", ...)
end

function Game.SetHasDoors(...)
	HandleMFKFunction("SetHasDoors", ...)
end

function Game.SetCharactersVisible(...)
	HandleMFKFunction("SetCharactersVisible", ...)
end

function Game.SetIrisTransition(...)
	HandleMFKFunction("SetIrisTransition", ...)
end

function Game.SetAllowSeatSlide(...)
	HandleMFKFunction("SetAllowSeatSlide", ...)
end

function Game.SetHighRoof(...)
	HandleMFKFunction("SetHighRoof", ...)
end

function Game.SetCharacterScale(...)
	HandleMFKFunction("SetCharacterScale", ...)
end

function Game.SuppressDriver(...)
	HandleMFKFunction("SuppressDriver", ...)
end

function Game.InitLevelPlayerVehicle(...)
	HandleMFKFunction("InitLevelPlayerVehicle", ...)
end

function Game.PlacePlayerCar(...)
	HandleMFKFunction("PlacePlayerCar", ...)
end

function Game.AddPurchaseCarReward(...)
	HandleMFKFunction("AddPurchaseCarReward", ...)
end

function Game.SetPostLevelFMV(...)
	HandleMFKFunction("SetPostLevelFMV", ...)
end

function Game.CreatePedGroup(...)
	HandleMFKFunction("CreatePedGroup", ...)
end

function Game.AddPed(...)
	HandleMFKFunction("AddPed", ...)
end

function Game.ClosePedGroup(...)
	HandleMFKFunction("ClosePedGroup", ...)
end

function Game.UsePedGroup(...)
	HandleMFKFunction("UsePedGroup", ...)
end

function Game.BindReward(...)
	HandleMFKFunction("BindReward", ...)
end

function Game.CreateTrafficGroup(...)
	HandleMFKFunction("CreateTrafficGroup", ...)
end

function Game.AddTrafficModel(...)
	HandleMFKFunction("AddTrafficModel", ...)
end

function Game.CloseTrafficGroup(...)
	HandleMFKFunction("CloseTrafficGroup", ...)
end

function Game.SetCarAttributes(...)
	HandleMFKFunction("SetCarAttributes", ...)
end

function Game.SetTotalGags(...)
	HandleMFKFunction("SetTotalGags", ...)
end

function Game.SetTotalWasps(...)
	HandleMFKFunction("SetTotalWasps", ...)
end

function Game.AddGlobalProp(...)
	HandleMFKFunction("AddGlobalProp", ...)
end

function Game.CreateChaseManager(...)
	HandleMFKFunction("CreateChaseManager", ...)
end

function Game.DisableHitAndRun(...)
	HandleMFKFunction("DisableHitAndRun", ...)
end

function Game.EnableHitAndRun(...)
	HandleMFKFunction("EnableHitAndRun", ...)
end

function Game.SetHitAndRunMeter(...)
	HandleMFKFunction("SetHitAndRunMeter", ...)
end

function Game.SetNumChaseCars(...)
	HandleMFKFunction("SetNumChaseCars", ...)
end

function Game.SetChaseSpawnRate(...)
	HandleMFKFunction("SetChaseSpawnRate", ...)
end

function Game.KillAllChaseAI(...)
	HandleMFKFunction("KillAllChaseAI", ...)
end

function Game.ResetHitAndRun(...)
	HandleMFKFunction("ResetHitAndRun", ...)
end

function Game.SetHitAndRunDecay(...)
	HandleMFKFunction("SetHitAndRunDecay", ...)
end

function Game.SetHitAndRunDecayInterior(...)
	HandleMFKFunction("SetHitAndRunDecayInterior", ...)
end

function Game.AddMission(...)
	HandleMFKFunction("AddMission", ...)
end

function Game.AddBonusMission(...)
	HandleMFKFunction("AddBonusMission", ...)
end

function Game.SetMissionNameIndex(...)
	HandleMFKFunction("SetMissionNameIndex", ...)
end

function Game.SelectMission(...)
	HandleMFKFunction("SelectMission", ...)
end

function Game.SetMissionResetPlayerInCar(...)
	HandleMFKFunction("SetMissionResetPlayerInCar", ...)
end

function Game.SetMissionResetPlayerOutCar(...)
	HandleMFKFunction("SetMissionResetPlayerOutCar", ...)
end

function Game.SetDynaLoadData(...)
	HandleMFKFunction("SetDynaLoadData", ...)
end

function Game.AddBonusObjective(...)
	HandleMFKFunction("AddBonusObjective", ...)
end

function Game.SetForcedCar(...)
	HandleMFKFunction("SetForcedCar", ...)
end

function Game.CloseMission(...)
	HandleMFKFunction("CloseMission", ...)
end

function Game.SetDemoLoopTime(...)
	HandleMFKFunction("SetDemoLoopTime", ...)
end

function Game.StreetRacePropsLoad(...)
	HandleMFKFunction("StreetRacePropsLoad", ...)
end

function Game.StreetRacePropsUnload(...)
	HandleMFKFunction("StreetRacePropsUnload", ...)
end

function Game.UseElapsedTime(...)
	HandleMFKFunction("UseElapsedTime", ...)
end

function Game.AttachStatePropCollectible(...)
	HandleMFKFunction("AttachStatePropCollectible", ...)
end

function Game.ShowHUD(...)
	HandleMFKFunction("ShowHUD", ...)
end

function Game.SetNumValidFailureHints(...)
	HandleMFKFunction("SetNumValidFailureHints", ...)
end

function Game.AddStage(...)
	HandleMFKFunction("AddStage", ...)
end

function Game.SetStageMessageIndex(...)
	HandleMFKFunction("SetStageMessageIndex", ...)
end

function Game.SetStageTime(...)
	HandleMFKFunction("SetStageTime", ...)
end

function Game.AddStageTime(...)
	HandleMFKFunction("AddStageTime", ...)
end

function Game.AddStageVehicle(...)
	HandleMFKFunction("AddStageVehicle", ...)
end

function Game.MoveStageVehicle(...)
	HandleMFKFunction("MoveStageVehicle", ...)
end

function Game.ActivateVehicle(...)
	HandleMFKFunction("ActivateVehicle", ...)
end

function Game.AddStageWaypoint(...)
	HandleMFKFunction("AddStageWaypoint", ...)
end

function Game.AddStageCharacter(...)
	HandleMFKFunction("AddStageCharacter", ...)
end

function Game.AddStageMusicChange(...)
	HandleMFKFunction("AddStageMusicChange", ...)
end

function Game.SetStageMusicAlwaysOn(...)
	HandleMFKFunction("SetStageMusicAlwaysOn", ...)
end

function Game.SetCompletionDialog(...)
	HandleMFKFunction("SetCompletionDialog", ...)
end

function Game.StageStartMusicEvent(...)
	HandleMFKFunction("StageStartMusicEvent", ...)
end

function Game.SetMusicState(...)
	HandleMFKFunction("SetMusicState", ...)
end

function Game.SetStageCamera(...)
	HandleMFKFunction("SetStageCamera", ...)
end

function Game.RESET_TO_HERE(...)
	HandleMFKFunction("RESET_TO_HERE", ...)
end

function Game.SetMaxTraffic(...)
	HandleMFKFunction("SetMaxTraffic", ...)
end

function Game.AddSafeZone(...)
	HandleMFKFunction("AddSafeZone", ...)
end

function Game.SetBonusMissionStart(...)
	HandleMFKFunction("SetBonusMissionStart", ...)
end

function Game.ShowStageComplete(...)
	HandleMFKFunction("ShowStageComplete", ...)
end

function Game.SetHUDIcon(...)
	HandleMFKFunction("SetHUDIcon", ...)
end

function Game.SetIrisWipe(...)
	HandleMFKFunction("SetIrisWipe", ...)
end

function Game.SetFadeOut(...)
	HandleMFKFunction("SetFadeOut", ...)
end

function Game.CloseStage(...)
	HandleMFKFunction("CloseStage", ...)
end

function Game.SetVehicleAIParams(...)
	HandleMFKFunction("SetVehicleAIParams", ...)
end

function Game.PlacePlayerAtLocatorName(...)
	HandleMFKFunction("PlacePlayerAtLocatorName", ...)
end

function Game.msPlacePlayerCarAtLocatorName(...)
	HandleMFKFunction("msPlacePlayerCarAtLocatorName", ...)
end

function Game.SwapInDefaultCar(...)
	HandleMFKFunction("SwapInDefaultCar", ...)
end

function Game.SetSwapPlayerLocator(...)
	HandleMFKFunction("SetSwapPlayerLocator", ...)
end

function Game.SetSwapDefaultCarLocator(...)
	HandleMFKFunction("SetSwapDefaultCarLocator", ...)
end

function Game.SetSwapForcedCarLocator(...)
	HandleMFKFunction("SetSwapForcedCarLocator", ...)
end

function Game.NoTrafficForStage(...)
	HandleMFKFunction("NoTrafficForStage", ...)
end

function Game.ClearTrafficForStage(...)
	HandleMFKFunction("ClearTrafficForStage", ...)
end

function Game.SetStageAIRaceCatchupParams(...)
	HandleMFKFunction("SetStageAIRaceCatchupParams", ...)
end

function Game.SetStageAIEvadeCatchupParams(...)
	HandleMFKFunction("SetStageAIEvadeCatchupParams", ...)
end

function Game.SetStageAITargetCatchupParams(...)
	HandleMFKFunction("SetStageAITargetCatchupParams", ...)
end

function Game.SetCharacterToHide(...)
	HandleMFKFunction("SetCharacterToHide", ...)
end

function Game.SetLevelOver(...)
	HandleMFKFunction("SetLevelOver", ...)
end

function Game.SetGameOver(...)
	HandleMFKFunction("SetGameOver", ...)
end

function Game.StayInBlack(...)
	HandleMFKFunction("StayInBlack", ...)
end

function Game.AllowMissionAbort(...)
	HandleMFKFunction("AllowMissionAbort", ...)
end

function Game.SetParTime(...)
	HandleMFKFunction("SetParTime", ...)
end

function Game.SetRaceEnteryFee(...)
	HandleMFKFunction("SetRaceEnteryFee", ...)
end

function Game.PutMFPlayerInCar(...)
	HandleMFKFunction("PutMFPlayerInCar", ...)
end

function Game.SetStatepropShadow(...)
	HandleMFKFunction("SetStatepropShadow", ...)
end

function Game.AddObjective(...)
	HandleMFKFunction("AddObjective", ...)
end

function Game.CloseObjective(...)
	HandleMFKFunction("CloseObjective", ...)
end

function Game.SetDestination(...)
	HandleMFKFunction("SetDestination", ...)
end

function Game.AddNPC(...)
	HandleMFKFunction("AddNPC", ...)
end

function Game.RemoveNPC(...)
	HandleMFKFunction("RemoveNPC", ...)
end

function Game.AddDriver(...)
	HandleMFKFunction("AddDriver", ...)
end

function Game.RemoveDriver(...)
	HandleMFKFunction("RemoveDriver", ...)
end

function Game.SetTalkToTarget(...)
	HandleMFKFunction("SetTalkToTarget", ...)
end

function Game.SetDialogueInfo(...)
	HandleMFKFunction("SetDialogueInfo", ...)
end

function Game.SetDialoguePositions(...)
	HandleMFKFunction("SetDialoguePositions", ...)
end

function Game.SetRaceLaps(...)
	HandleMFKFunction("SetRaceLaps", ...)
end

function Game.TurnGotoDialogOff(...)
	HandleMFKFunction("TurnGotoDialogOff", ...)
end

function Game.MustActionTrigger(...)
	HandleMFKFunction("MustActionTrigger", ...)
end

function Game.SetCoinFee(...)
	HandleMFKFunction("SetCoinFee", ...)
end

function Game.SetDurationTime(...)
	HandleMFKFunction("SetDurationTime", ...)
end

function Game.AddCollectible(...)
	HandleMFKFunction("AddCollectible", ...)
end

function Game.SetCollectibleEffect(...)
	HandleMFKFunction("SetCollectibleEffect", ...)
end

function Game.BindCollectibleTo(...)
	HandleMFKFunction("BindCollectibleTo", ...)
end

function Game.AllowUserDump(...)
	HandleMFKFunction("AllowUserDump", ...)
end

function Game.SetVehicleToLoad(...)
	HandleMFKFunction("SetVehicleToLoad", ...)
end

function Game.SetObjTargetVehicle(...)
	HandleMFKFunction("SetObjTargetVehicle", ...)
end

function Game.SetObjDistance(...)
	HandleMFKFunction("SetObjDistance", ...)
end

function Game.SetObjTargetBoss(...)
	HandleMFKFunction("SetObjTargetBoss", ...)
end

function Game.AddCollectibleStateProp(...)
	HandleMFKFunction("AddCollectibleStateProp", ...)
end

function Game.SetPickupTarget(...)
	HandleMFKFunction("SetPickupTarget", ...)
end

function Game.AllowRockOut(...)
	HandleMFKFunction("AllowRockOut", ...)
end

function Game.AddCondition(...)
	HandleMFKFunction("AddCondition", ...)
end

function Game.CloseCondition(...)
	HandleMFKFunction("CloseCondition", ...)
end

function Game.SetFollowDistances(...)
	HandleMFKFunction("SetFollowDistances", ...)
end

function Game.SetCondTargetVehicle(...)
	HandleMFKFunction("SetCondTargetVehicle", ...)
end

function Game.SetConditionPosition(...)
	HandleMFKFunction("SetConditionPosition", ...)
end

function Game.SetCondTime(...)
	HandleMFKFunction("SetCondTime", ...)
end

function Game.SetHitNRun(...)
	HandleMFKFunction("SetHitNRun", ...)
end

function Game.EnableTutorialMode(...)
	HandleMFKFunction("EnableTutorialMode", ...)
end

function Game.SetConversationCamName(...)
	HandleMFKFunction("SetConversationCamName", ...)
end

function Game.SetConversationCamPcName(...)
	HandleMFKFunction("SetConversationCamPcName", ...)
end

function Game.SetConversationCamNpcName(...)
	HandleMFKFunction("SetConversationCamNpcName", ...)
end

function Game.SetConversationCam(...)
	HandleMFKFunction("SetConversationCam", ...)
end

function Game.SetConversationCamDistance(...)
	HandleMFKFunction("SetConversationCamDistance", ...)
end

function Game.AmbientAnimationRandomize(...)
	HandleMFKFunction("AmbientAnimationRandomize", ...)
end

function Game.ClearAmbientAnimations(...)
	HandleMFKFunction("ClearAmbientAnimations", ...)
end

function Game.AddAmbientPcAnimation(...)
	HandleMFKFunction("AddAmbientPcAnimation", ...)
end

function Game.AddAmbientNpcAnimation(...)
	HandleMFKFunction("AddAmbientNpcAnimation", ...)
end

function Game.CharacterIsChild(...)
	HandleMFKFunction("CharacterIsChild", ...)
end

function Game.SetPresentationBitmap(...)
	HandleMFKFunction("SetPresentationBitmap", ...)
end

function Game.SetAnimCamMulticontName(...)
	HandleMFKFunction("SetAnimCamMulticontName", ...)
end

function Game.SetAnimatedCameraName(...)
	HandleMFKFunction("SetAnimatedCameraName", ...)
end

function Game.SetMissionStartMulticontName(...)
	HandleMFKFunction("SetMissionStartMulticontName", ...)
end

function Game.SetMissionStartCameraName(...)
	HandleMFKFunction("SetMissionStartCameraName", ...)
end

function Game.SetCamBestSide(...)
	HandleMFKFunction("SetCamBestSide", ...)
end

function Game.SetFMVInfo(...)
	HandleMFKFunction("SetFMVInfo", ...)
end

function Game.StartCountdown(...)
	HandleMFKFunction("StartCountdown", ...)
end

function Game.AddToCountdownSequence(...)
	HandleMFKFunction("AddToCountdownSequence", ...)
end

function Game.SetCarStartCamera(...)
	HandleMFKFunction("SetCarStartCamera", ...)
end

function Game.GoToPsScreenWhenDone(...)
	HandleMFKFunction("GoToPsScreenWhenDone", ...)
end

function Game.SetPlayerCarName(...)
	HandleMFKFunction("SetPlayerCarName", ...)
end

function Game.SetCondMinHealth(...)
	HandleMFKFunction("SetCondMinHealth", ...)
end

function Game.LoadP3DFile(...)
	HandleMFKFunction("LoadP3DFile", ...)
end

function Game.LoadDisposableCar(...)
	HandleMFKFunction("LoadDisposableCar", ...)
end

function Game.SetRespawnRate(...)
	HandleMFKFunction("SetRespawnRate", ...)
end

function Game.AddCharacter(...)
	HandleMFKFunction("AddCharacter", ...)
end

function Game.AddNPCCharacterBonusMission(...)
	HandleMFKFunction("AddNPCCharacterBonusMission", ...)
end

function Game.SetBonusMissionDialoguePos(...)
	HandleMFKFunction("SetBonusMissionDialoguePos", ...)
end

function Game.AddAmbientCharacter(...)
	HandleMFKFunction("AddAmbientCharacter", ...)
end

function Game.AddBonusMissionNPCWaypoint(...)
	HandleMFKFunction("AddBonusMissionNPCWaypoint", ...)
end

function Game.AddObjectiveNPCWaypoint(...)
	HandleMFKFunction("AddObjectiveNPCWaypoint", ...)
end

function Game.AddAmbientNPCWaypoint(...)
	HandleMFKFunction("AddAmbientNPCWaypoint", ...)
end

function Game.AddPurchaseCarNPCWaypoint(...)
	HandleMFKFunction("AddPurchaseCarNPCWaypoint", ...)
end

function Game.ActivateTrigger(...)
	HandleMFKFunction("ActivateTrigger", ...)
end

function Game.DeactivateTrigger(...)
	HandleMFKFunction("DeactivateTrigger", ...)
end

function Game.CreateAnimPhysObject(...)
	HandleMFKFunction("CreateAnimPhysObject", ...)
end

function Game.CreateActionEventTrigger(...)
	HandleMFKFunction("CreateActionEventTrigger", ...)
end

function Game.LinkActionToObjectJoint(...)
	HandleMFKFunction("LinkActionToObjectJoint", ...)
end

function Game.LinkActionToObject(...)
	HandleMFKFunction("LinkActionToObject", ...)
end

function Game.SetCoinDrawable(...)
	HandleMFKFunction("SetCoinDrawable", ...)
end

function Game.SetParticleTexture(...)
	HandleMFKFunction("SetParticleTexture", ...)
end

function Game.SetCharacterPosition(...)
	HandleMFKFunction("SetCharacterPosition", ...)
end

function Game.ResetCharacter(...)
	HandleMFKFunction("ResetCharacter", ...)
end

function Game.AddTeleportDest(...)
	HandleMFKFunction("AddTeleportDest", ...)
end

function Game.SetInitialWalk(...)
	HandleMFKFunction("SetInitialWalk", ...)
end

function Game.AddVehicleSelectInfo(...)
	HandleMFKFunction("AddVehicleSelectInfo", ...)
end

function Game.ClearVehicleSelectInfo(...)
	HandleMFKFunction("ClearVehicleSelectInfo", ...)
end

function Game.AddFlyingActor(...)
	HandleMFKFunction("AddFlyingActor", ...)
end

function Game.AddFlyingActorByLocator(...)
	HandleMFKFunction("AddFlyingActorByLocator", ...)
end

function Game.AddBehaviour(...)
	HandleMFKFunction("AddBehaviour", ...)
end

function Game.SetCollisionAttributes(...)
	HandleMFKFunction("SetCollisionAttributes", ...)
end

function Game.AddSpawnPoint(...)
	HandleMFKFunction("AddSpawnPoint", ...)
end

function Game.AddSpawnPointByLocatorScript(...)
	HandleMFKFunction("AddSpawnPointByLocatorScript", ...)
end

function Game.SetProjectileStats(...)
	HandleMFKFunction("SetProjectileStats", ...)
end

function Game.PreallocateActors(...)
	HandleMFKFunction("PreallocateActors", ...)
end

function Game.SetActorRotationSpeed(...)
	HandleMFKFunction("SetActorRotationSpeed", ...)
end

function Game.AddShield(...)
	HandleMFKFunction("AddShield", ...)
end

function Game.ClearGagBindings(...)
	HandleMFKFunction("ClearGagBindings", ...)
end

function Game.AddGagBinding(...)
	HandleMFKFunction("AddGagBinding", ...)
end

function Game.GagBegin(...)
	HandleMFKFunction("GagBegin", ...)
end

function Game.GagSetInterior(...)
	HandleMFKFunction("GagSetInterior", ...)
end

function Game.GagSetCycle(...)
	HandleMFKFunction("GagSetCycle", ...)
end

function Game.GagSetWeight(...)
	HandleMFKFunction("GagSetWeight", ...)
end

function Game.GagSetSound(...)
	HandleMFKFunction("GagSetSound", ...)
end

function Game.GagSetTrigger(...)
	HandleMFKFunction("GagSetTrigger", ...)
end

function Game.GagPlayFMV(...)
	HandleMFKFunction("GagPlayFMV", ...)
end

function Game.GagSetPosition(...)
	HandleMFKFunction("GagSetPosition", ...)
end

function Game.GagSetRandom(...)
	HandleMFKFunction("GagSetRandom", ...)
end

function Game.GagSetIntro(...)
	HandleMFKFunction("GagSetIntro", ...)
end

function Game.GagSetOutro(...)
	HandleMFKFunction("GagSetOutro", ...)
end

function Game.GagSetCameraShake(...)
	HandleMFKFunction("GagSetCameraShake", ...)
end

function Game.GagSetCoins(...)
	HandleMFKFunction("GagSetCoins", ...)
end

function Game.GagSetSparkle(...)
	HandleMFKFunction("GagSetSparkle", ...)
end

function Game.GagSetAnimCollision(...)
	HandleMFKFunction("GagSetAnimCollision", ...)
end

function Game.GagEnd(...)
	HandleMFKFunction("GagEnd", ...)
end

function Game.GagSetLoadDistances(...)
	HandleMFKFunction("GagSetLoadDistances", ...)
end

function Game.GagSetSoundLoadDistances(...)
	HandleMFKFunction("GagSetSoundLoadDistances", ...)
end

function Game.GagSetPersist(...)
	HandleMFKFunction("GagSetPersist", ...)
end

function Game.GagCheckCollCards(...)
	HandleMFKFunction("GagCheckCollCards", ...)
end

function Game.GagCheckMovie(...)
	HandleMFKFunction("GagCheckMovie", ...)
end
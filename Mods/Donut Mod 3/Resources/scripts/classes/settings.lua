-- Store Mod Settings (this will be a reference to Engine.Launcher.ModSettings.DonutMod3 in LuaScriptSupport)
Settings = {
	-- Gameplay
	Language = GetSetting("Language"),
	Difficulty = GetSetting("Difficulty") + 1,
	
	-- Advanced
	DisableNewGags = GetSetting("DisableNewGags"),
	DisableNewWasps = GetSetting("DisableNewWasps"),
	
	-- Other Mods (settings from other mods or based on whether or not other mods are enabled)
	ReplayableBonusMissions = IsModEnabled("ReplayableBonusMissions")
}
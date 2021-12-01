ThemeSupport = {}

if IsModEnabled("DonutModTheme4") then
	local ThemePath = GetModPath("DonutModTheme4")
	local FolderRedirectPaths = {
		["art"] = {
			ThemePath .. "/Resources/art",		-- Donut Mod Specific Theme Files
			ThemePath .. "/CustomFiles/art",		-- General Theme Files
			Paths.CustomFiles .. "/art",
			"/GameData/art",
		},
		["art/frontend/scrooby/resource/pure3d"] = {
			ThemePath .. "/Resources/art/frontend/scrooby/resource/pure3d",		-- Donut Mod Specific Theme Files
			ThemePath .. "/CustomFiles/art/frontend/scrooby/resource/pure3d",	-- General Theme Files
			Paths.CustomFiles .. "/art/frontend/scrooby/resource/pure3d",
			"/GameData/art/frontend/scrooby/resource/pure3d",
		},
	}

	function ThemeSupport.HandleFile(Path)
		-- Start Debug String
		local DebugString = "Theme Handler"
		
		-- Get Path (fix the slashes and lowercase it to look it up above)
		local Path2 = FixSlashes(string.lower(GetPathParent(Path)), false, true)
		local File = GetFileName(Path)
		
		DebugString = DebugString .. "\n Original Path: " .. Path2 .. "/" .. File .. "."
		
		-- Get Path Settings in FolderRedirects
		local FolderRedirectPaths2 = FolderRedirectPaths[Path2]

		-- Check If Folder Redirect Paths Exist
		if FolderRedirectPaths2 ~= nil then		
			for _, RedirectPath in pairs(FolderRedirectPaths2) do
				local NewFile = RedirectPath .. "/" .. File
			
				if Exists(NewFile, true, false) then
					Redirect(NewFile)
					DebugString = DebugString .. "\n New Path: " .. NewFile .. "."
					break
				else
					DebugString = DebugString .. "\n Not Found: " .. NewFile .. "."
				end
		
			end
		else
			DebugString = DebugString .. "\n No Redirect" .. "."
		end
		
		-- Print Debug Information
		print(DebugString)
	end
else
	function ThemeSupport.HandleFile() end
end
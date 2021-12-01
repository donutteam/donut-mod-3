SPTUtil = {}

function SPTUtil.OutputSoundResourceData(Files, Streaming, Looping, Trim)
	if type(Files) ~= "table" then
		local _Files = Files
		Files = {_Files}
	end
	
	local SoundResourceData = ""
	
	SoundResourceData = SoundResourceData .. "\ncreate daSoundResourceData named " .. RemoveFileExtension(GetFileName(Files[1])) .. " { \n"
	
	for _,File in pairs(Files) do
		SoundResourceData = SoundResourceData .. "\tAddFilename ( \"" .. File .. "\" 1.000000 ) \n"
	end
	if Streaming ~= nil then 
		SoundResourceData = SoundResourceData .. "\tSetStreaming ( " .. tostring(Streaming) .. " ) \n"
	end
	if Looping ~= nil then 
		SoundResourceData = SoundResourceData .. "\tSetLooping ( " .. tostring(Looping) .. " ) \n"
	end
	if Trim ~= nil then	
		SoundResourceData = SoundResourceData .. "\tSetTrim ( " .. tostring(Trim) .. " ) \n"
	end
	
	Output(SoundResourceData .. " } ")
end

function SPTUtil.CompileSoundScriptFolder(Folder, ExcludedFiles)
	print("Compiling " .. Folder .. ".")
	
	local Count = 0
	DirectoryGetEntries(Folder, function(name, directory)
		if directory then return true end
		
		if ExcludedFiles ~= nil then
			for _,File in pairs(ExcludedFiles) do
				if name == File then return true end
			end
		end
		
		file = Folder.."/"..name
		
		if GetFileExtension(name) == ".spt" then
			Output(ReadFile(file) .. "\n")
		elseif GetFileExtension(name) == ".lua" then
			dofile(file)
		end
		
		Count = Count + 1
		
		print("Processed " .. name .. ".")
		
		return true
	end)
	print("Done " .. Folder .. ", " .. Count .. " files.")
end
local DialogFile = GetFileName(GetPath())
local ExcludedFiles = {"dialog.spt","dialogfr.spt","dialogsp.spt","dialogge.spt"}

for k, v in pairs(ExcludedFiles) do
	if v == DialogFile then
		ExcludedFiles[k] = nil
	end
end

SPTUtil.CompileSoundScriptFolder(Paths.Resources .. "/sound/scripts/dialog", ExcludedFiles)
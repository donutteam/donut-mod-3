if IsModEnabled("Widescreen") then
	Redirect(Paths.Resources .. "/art/license/licensePC_16x9.p3d")
	print("Using 16x9 License Screen.")
else
	Redirect(Paths.Resources .. "/art/license/licensePC_4x3.p3d")
	print("Using 4x3 License Screen.")
end
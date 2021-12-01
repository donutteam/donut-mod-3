function OutputDebug.Start(AddNewlines)
	DebugOutput = ""
	_Output = Output
	Output = function(text)
		_Output(text)
		DebugOutput = DebugOutput .. text
		if AddNewlines then
			DebugOutput = DebugOutput .. "\n"
		end
	end
end

function OutputDebug.End()
	Output = _Output
	Alert(DebugOutput)
end
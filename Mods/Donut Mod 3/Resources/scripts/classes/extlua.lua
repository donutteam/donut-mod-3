--[[
	Extended Lua
	This class extends Lua's base libraries with new functions for performing mathematical operations and interacting with various types.
]]

function math.floorNearest(number, nearest)
	return math.floor(number / nearest) * nearest
end

function math.ceilNearest(number, nearest)
	return math.ceil(number / nearest) * nearest
end

function string.random(length)
	length = length or 1
	
	if length < 1 then return nil end
	
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(97, 122))
	end
	
	return table.concat(array)
end

function string.split(str, div)
	if div == "" then return false end
	
	local pos, arr = 0, {}
	
	for st, sp in function() return string.find(str, div, pos, true) end do
		table.insert(arr,string.sub(str, pos, st - 1))
		pos = sp + 1
	end
	
	table.insert(arr, string.sub(str, pos))
	return arr
end

function table.contains(t, data)
	for k,v in pairs(t) do
		if v == data then
			return true
		end
	end
	return false
end

function table.tostring(data)
    -- cache of tables already printed, to avoid infinite recursive loops
    local tablecache = {}
    local buffer = ""
    local padder = "    "
 
    local function _dumpvar(d, depth)
        local t = type(d)
        local str = tostring(d)
        if (t == "table") then
            if (tablecache[str]) then
                -- table already dumped before, so we dont
                -- dump it again, just mention it
                buffer = buffer.."<"..str..">\n"
            else
                tablecache[str] = (tablecache[str] or 0) + 1
                buffer = buffer.."("..str..") {\n"
                for k, v in pairs(d) do
                    buffer = buffer..string.rep(padder, depth+1).."["..k.."] => "
                    _dumpvar(v, depth+1)
                end
                buffer = buffer..string.rep(padder, depth).."}\n"
            end
        elseif (t == "number") then
            buffer = buffer.."("..t..") "..str.."\n"
        else
            buffer = buffer.."("..t..") \""..str.."\"\n"
        end
    end
    _dumpvar(data, 0)
	
	return buffer
end

function table.shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function table.deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function Dump(t, indent)
	if type(t) ~= "table" then
		print("got type: " .. type(t) .. ", expected type: table")
		return
	end
	indent = indent or ""
	for k, v in pairs(t) do
		if type(v) == "table" then
			print(indent .. k .. ":")
			Dump(v, indent)
		else
			print(indent .. k .. ":" .. tostring(v))
		end
	end
end

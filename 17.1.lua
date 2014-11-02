
------------------------------
-- 备忘录
------------------------------
---[[
local results = {}
setmetatable(results, {__mode="kv"})  -- key是字符串,弱引用无效
function mem_loadstring(s)
    local res = result[s]
    if res == nil then
        res = asset(loadstring(s))
        result[s] = res
    end
    return res
end
--]]

------------------------------
-- 颜色重用
------------------------------
---[[
local result = {}
setmetatable(results, {__mode="v"})
function createRGB(r, g, b)
    local key = r .. "-" .. g .. "-" .. b
    local color = results[key]
    if color == nil then
        color = {red=r, green=g, blue=b}
        results[key] = color
    end
    return color
end
--]]
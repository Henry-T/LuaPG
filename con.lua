------------------------------
-- 定义、执行和状态
-- Lua程序设计 P74
------------------------------
co = coroutine.create(function() print("hello") end)
print(co)
print(coroutine.status(co))
coroutine.resume(co)

------------------------------
-- 参数
-- Lua程序设计 P75
------------------------------
co = coroutine.create(function(a, b, c)
    coroutine.yield(a..b..c)
    for i=1,10 do
        coroutine.yield(a, b, c)
    end
end)

print(coroutine.resume(co, 1,2,3))
print(coroutine.resume(co, 4, 5, 6))        -- 无法修改参数
print(coroutine.resume(co))
print(coroutine.resume(co))

-- true    1       2       3
-- true    1       2       3
-- true    1       2       3
-- true    1       2       3

co = coroutine.create(function(a,b,c) 
    print("co", a, b, c)
end)
coroutine.resume(co, 1, 2, 3)   --> co 1 2 3


co = coroutine.create(function(a, b)
    coroutine.yield(a+b, a-b)
end)
print(coroutine.resume(co, 20, 10))  --> true 30 10



co = coroutine.create(function()
    print("co", coroutine.yield())
end)
coroutine.resume(co)
coroutine.resume(co, 4, 5)      --> co 4 5
print(coroutine.resume(co, 20, 10))
coroutine.resume(co)

co = coroutine.create(function()
    return 6, 7
end)
print(coroutine.resume(co))   --> true 6, 7



-- co = coroutine.create(function() 
--     print("before")
--     print(coroutine.yield(), 6)
--     print("after")
-- end)

-- print(coroutine.resume(co, 1, 2))
-- print(coroutine.resume(co, 4, 5))
-- print(coroutine.resume(co, 4, 5))
-- print(coroutine.resume(co, 4, 5))



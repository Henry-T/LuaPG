------------------------
-- 生产者消费者
------------------------
--[[
function send(x)
    coroutine.yield(x)
end

producer = coroutine.create(function()
    while true do 
        local x = io.read()
        send(x)
    end
end)

function receive()
    local status, value = coroutine.resume(producer)
    return value
end

function consumer()
    while true do 
        local x = receive()
        if x~= "quit" then
            io.write(x, "\n")
        else
            return
        end
    end
end

consumer()
--]]

------------------------
-- 过滤器
------------------------
---[[
function send(x)
    coroutine.yield(x)
end

function producer()
    return coroutine.create(function()
        while true do 
            local x = io.read()
            send(x)
        end
    end)
end

function receive(prod)
    local status, value = coroutine.resume(prod)
    return value
end

function filter(prod)
    return coroutine.create(function()
        for line=1, math.huge do
            local x = receive(prod)
            x = string.format("%5d %s", line, x)
            send(x)
        end
    end)
end

function consumer(prod)
    local cnt = 0
    while true do 
        local x = receive(prod)
        io.write(x, "\n")
        cnt = cnt+1
        if cnt > 5 then
            return
        end
    end
end

p = producer()
f = filter(p)
consumer(f)
--]]

function divs(n)
    local count = 0
    for i = 1,n do
        if n % i == 0 then
            count = count + 1
            -- print(i)
        end
    end
    return count
end

function testdivs(n)
    print("Divs of " .. n .. " = " .. divs(n))
end

function divs2(n)
    local count = 0
    local limit = math.sqrt(n)
    for i = 1, limit do
        if n % i == 0 then
            count = count + 2
            -- print(i)
        end
    end
    return count
end

-- for i = 1, 100 do
--     -- testdivs(i)
--     d1 = divs(i)
--     d2 = divs2(i)
--     if d1 ~= d2 then
--         print("Divs of " .. i .. ": " .. d1 .. " or " .. d2)
--     end
-- end
-- print("Done")

io.stdout:setvbuf("line")

function tris(n)
    num = 0
    for i = 1,n do
        num = num + i
        ndivs = divs2(num)
        if ndivs > 200 then
            print(num .. " -> " .. ndivs)
            if ndivs > 500 then
                print("cool")
                return num
            end
        end
    end
end

tris(1000000)


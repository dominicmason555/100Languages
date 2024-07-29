layout reg

define y
    i r a0
    i r t5
end

target remote :1234
b main
c

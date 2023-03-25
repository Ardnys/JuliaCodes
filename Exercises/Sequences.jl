a = 1
smolline = true
while a < 14
    if smolline
        print("-$a ")
        global smolline = false
    else
        print("$a ")
        global smolline = true
    end
    global a += 1
end
println("")
t = 2
while t < 2^12
    print("$t ")
    global t *= 2
end
ctr = 2
pie = 0.0
for i in range(1, step=2, length=20000000)
    if ctr % 2 == 0
        global pie += (4/i)
        global ctr += 1
    elseif ctr % 2 != 0
        global pie -= (4/i)
        global ctr += 1
    end
end
print(pie) # accurate to the 7th decimal


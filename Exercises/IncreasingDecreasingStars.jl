for i in 1:6
    for j in 1:i
        print("*")
    end
    println()
end
let 
a = 6
for k in 1:6
    for l in 1:a
        print("*")
    end
    a -= 1
    println()
end
end 
# i hate Julia's scope things
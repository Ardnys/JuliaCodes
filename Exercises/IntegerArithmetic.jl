numarr = Int64[0,0,0,0,0,0,0,0,0,0]

for i in 1:10
    print("Enter 10 integers: ")
    numarr[i] = parse(Int, readline())
    if numarr[i] < 0
        numarr[i] = parse(Int, readline())
    end
end

sort(numarr) # bubble sort is painful so... i need to learn better (more fun) sorts
smolnum = numarr[1]
bignum = numarr[10]
numtotal = 0
for (idx, val) in enumerate(numarr)
    global numtotal += val
end
println("Smallest number is $smolnum")
println("Largest number is $bignum")
numavg = numtotal/10
println("Average $numavg")


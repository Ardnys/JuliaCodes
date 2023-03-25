function inputprompt(inp)
    print("Input $inp. Value: ")
    userinp = parse(Int, readline())
    return userinp
end

print("Input number of values: ")
inputnum = parse(Int, readline())
sumvalue = 0
for i in 1:inputnum
    inputvalue = inputprompt(i)
    global sumvalue += inputvalue
    println()
end

print("Sum: $sumvalue")
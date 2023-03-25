function printdict(argdictionary)
    for (k, v) in argdictionary
        println("item: $k, price: \$$v")
    end
end
function getitems(stockdict, choice)
    if haskey(stockdict, choice)
        useritem = get(stockdict, choice, "no such item")
        println("A $choice? Good choice")
        return useritem
    else
        print("Ooops. No such item in our stock... Pick something that we have perhaps: ")
        choice = readline()
        useritem = get(stockdict, choice, "pls")
        println("A $choice? Nice")
        return useritem
    end
end
processor = Dict("3GHz"=>200,"4GHz"=>300)
memory = Dict("2M"=>150,"4M"=>250)
harddrive = Dict("256G"=>125,"512G"=>200)
opticaldrive = Dict("CD"=>50,"CD/DVD"=>75, "DVD/RW"=>100)
monitor = Dict("17\""=>200,"19\""=>300,"21\""=>400)

println("Welcome to computer parts store!")
println("Please pick a processor. Enter its name as you see it. Otherwise we will not guarantee the product")
printdict(processor)
userprocessorchoice = readline()
processorprice = getitems(processor, userprocessorchoice)

println("Please pick a memory. Enter its name as you see it. Otherwise we will not guarantee the product")
printdict(memory)
usermemorychoice = readline()
memoryprice = getitems(memory, usermemorychoice)

println("Please pick a hard drive. Enter its name as you see it. Otherwise we will not guarantee the product")
printdict(harddrive)
userharddrivechoice = readline()
harddriveprice = getitems(harddrive, userharddrivechoice)

println("Please pick an optical drive. Enter its name as you see it. Otherwise we will not guarantee the product")
printdict(opticaldrive)
useropticaldrivechoice = readline()
opticaldriveprice = getitems(opticaldrive, useropticaldrivechoice)

println("Please pick a monitor. Enter its name as you see it. Otherwise we will not guarantee the product")
printdict(monitor)
usermonitorchoice = readline()
monitorprice = getitems(monitor, usermonitorchoice)

totalprice = processorprice + memoryprice + harddriveprice + opticaldriveprice + monitorprice
println("That's a good 'puter you got 'ere... It will be $totalprice")

# it could be done in a loop so that user could pick up multiple items but i thought it was overkill
print("Enter salesman sales: ")
mansales = parse(Int, readline())

if mansales < 100
    println("sorry, no comission for you")
elseif mansales >= 100 && mansales < 1000
    comission = mansales * (1/10)
    println("Salesman comission is \$$comission")
else
    comission = 100 + (mansales * (12/100))
    println("good work. salesman comission is \$$comission")
end
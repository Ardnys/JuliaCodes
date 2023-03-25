print("Enter 2 (two) digit num: ")
usernum = parse(Int, readline())

firstdigit = trunc(Int, usernum / 10)
seconddigit = usernum % 10

numwords = Dict(
    1=>"One",
    2=>"Two",
    3=>"Three",
    4=>"Four",
    5=>"Five",
    6=>"Six",
    7=>"Seven",
    8=>"Eight",
    9=>"Nine"
)

firstword = get(numwords, firstdigit, "no such item")
secondword = get(numwords, seconddigit, "no such item")
println("your digits are: $firstword $secondword")
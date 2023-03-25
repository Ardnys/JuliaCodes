function checkguess(userguess, ldmind, tdmind, sdmind, fdmind)
    lduserguess = userguess%10
    tduserguess = floor(Int, (userguess%100)/10)
    sduserguess = floor(Int, (userguess%1000)/100)
    fduserguess = floor(Int, userguess/1000)
    checkArr = [ldmind, sdmind, tdmind, fdmind]

    gottem = 0
    println("Correct number and position")
    gottem += compareguess(fduserguess, fdmind)
    gottem += compareguess(sduserguess, sdmind)
    gottem += compareguess(tduserguess, tdmind)
    gottem += compareguess(lduserguess, ldmind)
    println("\nWhether the number exist")
    numexists(fduserguess, checkArr)
    numexists(sduserguess, checkArr)
    numexists(tduserguess, checkArr)
    numexists(lduserguess, checkArr)

    return gottem
end

function compareguess(user, mind)
    if user==mind
        print("-True-")
        return 1
    else
        print("-False-")
        return 0
    end
end

function numexists(user, mind)
    if in(user, mind)
        print("=yes =")
    else
        print("= no =")
    end
end

let 
    
inmemind = rand(1000:9999)
ldmind = inmemind%10
tdmind = floor(Int, (inmemind%100)/10)
sdmind = floor(Int, (inmemind%1000)/100)
fdmind = floor(Int, inmemind/1000)
found = 0

while found != 4
    print("Take a guess: ")
    found = checkguess(parse(Int, readline()), ldmind, tdmind, sdmind, fdmind)
    println("\nAny second now...\n")
end
println("Wooo!!")
println("Correct number: $inmemind")
end
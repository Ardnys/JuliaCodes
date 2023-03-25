function lastIndexOf(arr, val)
    hold = 0
    for i in eachindex(arr)
        if (arr[i] == val)
            hold = i
        end
    end
    if (hold != 0)
        return hold
    else
        return -1
    end
end

function sneakyLastIndex(arr, val)
    for i in length(arr):-1:1
        if (arr[i] == val)
            return i
        end
    end
    return -1
end

A = [2, 5, 65, 2, 4, 9, 1, 2]
lio = lastIndexOf(A, 10)
#println(lio)
slio = sneakyLastIndex(A, 10)
println(slio)
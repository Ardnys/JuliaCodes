# i just have to use it whenever i can
function insertionSort(arr)
    hold = 0
    for i in 2:1:length(arr)
        hold = arr[i]
        j = i-1
        enter = false
        while (j >= 1 && hold < arr[j])
            arr[j+1] = arr[j]
            j -= 1
            enter = true
        end
        if (enter)
            arr[j+1] = hold
        end
    end
end

function isUniqueSort(arr)
    # sort because i can
    insertionSort(arr)
    for i in 1:1:length(arr)-1
        if (arr[i]==arr[i+1])
            return false
        end
    end
    return true
end

function isUnique(arr)
    for i in 1:1:length(arr)-1
        for j in i+1:1:length(arr)
            if (arr[i]==arr[j])
                return false
            end
        end
    end
    return true
end

# i  like both of the solutions so i did both. and it would be interesting to test their speed

A = [1, 9, 6, 5, 8, 2, 19, 4, 13, 55]
B = [32, 66, 12, 3, 7, 24, 8, 3, 49]
println(isUnique(A))
println(isUnique(B))
println(isUniqueSort(A))
println(isUniqueSort(B))
# i learned a new sorting algorithm so i will not cheat this time
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

function mediaN(arr)
    # sort the array first
    insertionSort(arr)
    even = false
    if (length(arr)%2==0)
        even = true
    end
    medianindex = trunc(Int, ceil(length(arr)/2))
    if (even)
        return (arr[medianindex]+arr[medianindex+1])/2        
    else
        return arr[medianindex]
    end
end

A = [5, 2, 4, 17, 55, 4, 3, 26, 18, 2, 17]
B = [42, 37, 1, 97, 1, 2, 7, 42, 3, 25, 89, 15, 10, 29, 27, 26]
println(mediaN(A))  # odd sized
println(mediaN(B))  # even sized
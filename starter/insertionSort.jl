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

A = [2, 5, 1, 7, 4, 9, 6, 8, 3, 1, 2]
for i in A
    print("$i ")
end
insertionSort(A)
println()
for j in A
    print("$j ")
end

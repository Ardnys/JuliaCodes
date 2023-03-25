function isSorted(arr)
    for i in 1:1:length(arr)-1
        if (arr[i]>arr[i+1])
            return false
        end
    end
    return true
end

A = [12.3, 14.5, 22.8, 31.9, 58.1]
B = [44.1, 84.5, 12.6, 21.7]

println(isSorted(A))
println(isSorted(B))
function longestSortedSequence(arr)
    ctr = 0
    lonctr = 0
    for i in 2:length(arr)
        if (arr[i]>=arr[i-1])
            ctr += 1
            if (ctr>lonctr)
                lonctr = ctr
            end
        elseif (arr[i]<arr[i-1])
            ctr = 0
        end
    end
    return lonctr+1
end

A = [3, 18, 10, 9, 79, 14, -3, 0, 10, 7, 56, 98, 102, 333]
B = [1, 2, 3, 2, 4, 5, 6]
println(longestSortedSequence(A))
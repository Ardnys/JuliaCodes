
function aEncoder(str)
    arr = Vector{String}(undef, length(str)*2) # worst case scenario
    hold = ""
    ctr = 0
    arrctr = 1;
    flag = 0
    j = 1
    i = 1 
    while i < length(str)
        c = "$(str[i])"
        # new string
        flag = 1
        while flag == 1 
            if "$(str[j])" == c && j < length(str)
                ctr += 1
            elseif "$(str[j])" != c || j == length(str)
                if (j == length(str))
                    ctr += 1
                end
                arr[arrctr] = c # the char
                arr[arrctr+1] = "$ctr" # the amount
                arrctr += 2
                flag = 0 # reset everything
                ctr = 0
                i = j
                break
            end
            j += 1
        end
    end 
    # for k in length(arr):-1:1
    #     if typeof(arr[k]) == UndefInitializer
    #         deleteat!(arr, k)
    #     end
    # end
    return arr[1:arrctr-1]
end 

arr = aEncoder("AAAABBBCC")
println(arr)
for s in arr 
    println(s)
end
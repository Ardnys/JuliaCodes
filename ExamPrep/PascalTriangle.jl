function pascal(matrix)
    for i in 1:1:size(matrix)[1]  # rows
        matrix[i, 1] = 1
        if i == 1
            continue
        end
        for j in 2:1:size(matrix)[2]  # cols
            matrix[i, j] = matrix[i-1, j] + matrix[i-1, j-1]
        end
    end
end

function pront(matrix)
    for i in 1:1:size(matrix)[1]
        for j in 1:1:size(matrix)[2]
            print(matrix[i, j])
        end
        println()
    end
end

A = Array{Int64, 2}(undef, (10,10))
show(A)
println()
pascal(A)
pront(A)
println("End of program...")
function saddlepoint(matrix)
    for i in 1:1:size(matrix)[1]  # rows
        tempmax = matrix[i, 1]
        tempmin = matrix[i, 1]
        maxcol = 0
        mincol = 0
        for j in 1:1:size(matrix)[2]  # columns
            if (matrix[i, j] >= tempmax)
                tempmax = matrix[i, j]
                maxcol = j
            end

            if matrix[i, j] <= tempmin
                tempmin = matrix[i, j]
                mincol = j
            end
        end
        sad1 = checkcolmax(matrix, tempmin, mincol)
        sad2 = checkcolmin(matrix, tempmax, maxcol)

        if sad1
            println("Saddle point!")
            println("SP: $tempmin, ($i, $mincol)")
        end
        if sad2
            println("Saddle point!")
            println("SP: $tempmax, ($i, $maxcol)")
        end
    end
end

function checkcolmin(matrix, min, colnum)
    for i in 1:1:size(matrix)[1]
        if matrix[i, colnum] < min  # min must be min of that col
            return false
        end
    end
    return true
end

function checkcolmax(matrix, max, colnum)
    for i in 1:1:size(matrix)[1]
        if matrix[i, colnum] > max  # max must be the max of that col
            return false
        end
    end
    return true
end



TDarr = [11 22 33 33;
         99 55 66 77;
         77 44 99 22]

saddlepoint(TDarr)
println("End of program...")

# currently i can't deal with duplicate values 
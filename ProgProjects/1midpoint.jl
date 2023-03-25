function hasMidpoint(p1, p2, p3)    
    if ((p1+p2)/2 == p3)
        return true
    elseif ((p1+p3)/2 == p2)
        return true
    elseif ((p2+p3)/2 == p1)
        return true
    else
        return false
    end
end

hm1 = hasMidpoint(7, 4, 10)
hm2 = hasMidpoint(9, 15, 8)
hm3 = hasMidpoint(6, 11, 1)
println("$hm1, $hm2, $hm3")
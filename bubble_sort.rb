def bsort(arr)
    sorted = []
    n= (arr.length) - 1
    while n >= 0 do 
    for i in 0..n-1
        j = i+1
        temp = arr[i] <=> arr[j]
       if temp == 1
            arr[i], arr[j] = arr[j], arr[i]
        end
    end      
     sorted[n] = arr[n] 
     n -= 1               
    end

return sorted
end

print bsort([0, 6, 10, 5, 7, 1, 3, 4, 8, 9])


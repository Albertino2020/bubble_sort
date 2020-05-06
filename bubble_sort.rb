def bsort (arr)
    sorted = []
    n= (arr.length) -1

   while n > 0 do 
    for i in arr[0..n] do
        temp=arr[i] <=> arr[i+1]
       if temp==1
            arr[i], arr[i+1] = arr[i+1], arr[i]
        end   
    end
    n-=1
   end

end

puts bsort([0, 6, 10, 5, 7, 1, 3, 4, 8, 9])


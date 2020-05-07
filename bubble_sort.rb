def bubble_sort_1(arr)
  sorted = []
  n = (arr.length) - 1
  while n >= 0
    for i in 0..n - 1
      j = i + 1
      temp = arr[i] <=> arr[j]
      if temp > 0 
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
    sorted[n] = arr[n]
    n -= 1
  end

  return sorted
end

p bubble_sort_1([0, 6, 10, 5, 7, 1, 3, 4, 8, 9])

# Second implementation

def bubble_sort_2(arr = [2, 4, 1, 5, 3, 10, 6])
  n = arr.length
  loop do
    (n - 1).times do |i|
      if (arr[i] <=> arr[i + 1]) == 1
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
    n -= 1
    break if n <= -1
  end
  return arr
end

p bubble_sort_2


# The Bubble_Sort_By Method

def bubble_sort_by(arr)
  sorted = []
  n = (arr.length) - 1
  while n >= 0
    0.upto(n - 1) do |i|
      a = arr[i]
      b = arr[i+1]
      temp = yield(a, b)
      if temp > 0 
        arr[i], arr[i + 1] = a, b
      end
    end
    sorted[n] = arr[n]
    n -= 1
  end

  return sorted
end

p bubble_sort_by (["hi","hello","hey"]){ |left, right| left.length - right.length }
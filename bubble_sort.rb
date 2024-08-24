def bubble_sort(arr)
  for i in 0...arr.length
    for j in i...arr.length
      if arr[i] > arr[j]
        tmp = arr[j]
        arr[j] = arr[i]
        arr[i] = tmp
      end
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
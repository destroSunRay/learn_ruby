# stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(arr)
  profit=0
  min=0
  max=1
  i=0
  j=0
  idx=0
  for num in arr do
    if num < arr[i]
      i=idx
      j=idx
    elsif num > arr[j]
      j=idx
    end
    if i<j && profit<arr[j]-arr[i]
      min=i
      max=j
      profit = arr[j]-arr[i]
    end
    idx+=1
  end
  [min, max]
end

p stock_picker([17,3,6,9,15,8,6,1,10])

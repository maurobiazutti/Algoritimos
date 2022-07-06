##Ok Passou
def counting_sort(arr,min=0,max=10)
  max = arr.max
  min = arr.min

  n=max-min+1
  count=Array.new(n,0)
  len=arr.length
  output=Array.new(len)

  (0...len).each { |i|
    count[arr[i] - min] += 1
  }

  (1...n).each { |i|
    count[i] += count[i - 1]
  }

  (0...len).each { |i|
    output[count[arr[i] - min] - 1] = arr[i]
    count[arr[i] - min] -= 1
  }

  (0...len).each { |i|
    arr[i] = output[i]
  }

  arr
end
arr=[-5, -10, 0, -3, 8, 5, -1, 10, 11, 9, 12, 15]

puts counting_sort(arr)


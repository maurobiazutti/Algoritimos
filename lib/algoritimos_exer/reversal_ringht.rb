## OK PASSOU
def reverse_array(arr, ini, fim)
  i = 0
  while i + ini < fim - i
    arr[ini + i] = arr[ini + i] + arr[fim - i]
    arr[fim - i] = arr[ini + i] - arr[fim - i]
    arr[ini + i] = arr[ini + i] - arr[fim - i]
    i += 1
  end
end

def right_rotate( arr, d, n)
  reverse_array(arr, 0, n - 1)
  reverse_array(arr, 0, d - 1)
  reverse_array(arr, d, n - 1)
end

def print_arr(arr, size)
  (0..size).each { |i|
    puts arr[i]
  }
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
n = arr.length
k = 3

right_rotate(arr, k, n)
print_arr(arr, n)



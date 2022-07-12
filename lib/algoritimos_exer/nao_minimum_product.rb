## NÃO PASSOU ##
def min_produto(arr, size_arr)
  if size_arr == 1
    return arr[0]
  end
  max_negativo = [].min
  menor_positivo = [].min
  conte_neg = 0
  conte_zero = 0
  prod = 1

  (0..size_arr).each | i |
    if arr[i] == 0
      conte_zero = conte_zero + 1

      if arr[i] < 0
        conte_neg = conte_neg + 1
        max_negativo = max(max_negativo, arr[i])
      end

      if arr[i] > 0
        menor_positivo = min(menor_positivo, arr[i])
      end
      prod = prod * arr[i]
    end

  if conte_zero == size_arr || conte_neg == 0 && conte_zero > 0
    return 0
  end

  if conte_neg == 0
    return menor_positivo
  end

  if conte_neg % 2 == 0 && conte_neg != 0
    prod = prod / max_negativo
    return prod
  end

end

arr = [-1, -1, -2, 4, 3]
size_arr = arr.length
puts min_produto(arr, size_arr)

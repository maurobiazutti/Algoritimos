##Ok Passou
def pesquisa_binarya(arr, x, ini, fim)
  if ini <= fim
    media = (ini + fim) / 2
    if arr[media] == x
      media
    elsif x < arr[media]
      pesquisa_binarya(arr, x, ini, fim - 1)
    else
      pesquisa_binarya(arr, x, ini + 1, fim)
    end
  else
    -1
  end
end

array = [1, 3, 5, 10, 14, 17, 20, 37, 38, 38]
x = 38

resultado = pesquisa_binarya(array, x, 0, (array.count - 1))

if resultado != -1
  puts "Presente no índice #{resultado}"
else
  puts 'Não está presente no array!'
end



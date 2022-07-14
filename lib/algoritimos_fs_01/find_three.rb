#Ok Passou
def tres_maiores(x)
  x.sort.last(3).reverse
end
arr = [10, 4, 3, 50, 23, 90]

puts tres_maiores(arr)

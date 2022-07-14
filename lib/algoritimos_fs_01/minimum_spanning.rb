#Ok Passou
def min_sum(a, siz)
  min_arr = a.min
  min_arr * (siz - 1)
end
a = [3, 6, 2, 8, 7, 5]
siz = a.length
puts min_sum(a, siz)

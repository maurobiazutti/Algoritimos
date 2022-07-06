##Ok Passou
list = [5, 1, 4, 2, 8, 32, 36, 80, 5]
def bubble_sort(list)
  (list.size-2).downto(0) do |i|
    (0..i).each do |j|
      if list[j] > list[j + 1]
        aux = list[j]
        list[j] = list[j + 1]
        list[j + 1] = aux
      end
    end
  end
  list
end
puts bubble_sort(list)

#----------------------------------------------------------
# ####ffabiop Passou
# arr = [108, 32,91,1,3,12,34,35,46,3]
# def bubble_sort(arr)
#   (arr.size-2).downto(0) do |i|
#     (0..i).each do |j|
#       arr[j], arr[j+1] = arr[j+1], arr[j] if arr[j] > arr[j+1]
#     end
#   end
#   return arr
# end
# puts bubble_sort(arr)


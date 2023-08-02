# Найдите непрерывный подмассив в массиве (содержащем как минимум 1 элемент),
# который имеет максимальную сумму элементов.
# Пример: [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4] должно вернуть [4, -1, 2, 1].

def sub_array_with_max_sum(array)
  new_array = []
  (0...array.size).each do |i|
    (i...array.size).each do |j|
      new_array << array[i..j]
    end
  end
  h = {}
  new_array.each {|sub_array| h[sub_array] = sub_array.sum }
  h.max_by { |_k, v| v }.first.inspect
end  

array = [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4]
puts array_with_max_sum(array)
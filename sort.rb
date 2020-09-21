def bubble_sorting(arr)
  (0...arr.length).each do |j|
    (1...arr.length - j).each do |i|
      if arr[i] < arr[i - 1]
        arr.insert(i - 1, arr[i])
        arr.delete_at(i + 1)
      end
    end
  end
  return arr
end

def bubble_sort_by(arr)
  arr.length.times do |i|     
    (1...arr.length-i).each do |j|
      element = yield(arr[j], arr[j - 1]).positive? 
      if element == false
        temp = arr[j] 
        arr[j] = arr[j - 1] 
        arr[j-1] = temp
      end
    end
  end
  return arr
end


my_array = [15, 9, 7, 2, 3, 1]
print bubble_sorting(my_array)

sorted = bubble_sort_by( %w('hello' 'iiiiiiii' 'hell' 'h') { | left, right | left.length - right.length })
puts sorted

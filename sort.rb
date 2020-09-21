my_array = [15, 9, 7, 2, 3, 1]

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

print bubble_sorting(my_array)

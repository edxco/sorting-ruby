<<<<<<< Updated upstream
def bubble_sorting(arr)
  (0...arr.length).each do |j|
    (1...arr.length - j).each do |i|
      if arr[i] < arr[i - 1]
        arr.insert(i - 1, arr[i])
        arr.delete_at(i + 1)
      end
    end
  end
  arr
end

def bubble_sort_by(arr)
  arr.length.times do |i|
    (1...arr.length - i).each do |j|
      next unless yield(arr[j], arr[j - 1]).negative?

      temp = arr[j]
      arr[j] = arr[j - 1]
      arr[j - 1] = temp
    end
  end
  arr
end

my_array = [15, 9, 7, 2, 3, 1]
print bubble_sorting(my_array)

print bubble_sort_by(%w[hello hey hell hi]) { |left, right| left.length - right.length }
=======
def bubble_sorting(arr)
  (0...arr.length).each do |j|
    (1...arr.length - j).each do |i|
      if arr[i] < arr[i - 1]
        arr.insert(i - 1, arr[i])
        arr.delete_at(i + 1)
      end
    end
  end
  arr
end

def bubble_sort_by(arr)
  arr.length.times do |i|
    (1...arr.length - i).each do |j|
      next unless yield(arr[j], arr[j - 1]).negative?

      temp = arr[j]
      arr[j] = arr[j - 1]
      arr[j - 1] = temp
    end
  end
  arr
end

my_array = [15, 9, 7, 2, 3, 1]
print bubble_sorting(my_array)

print bubble_sort_by(%w[hello hey hell hi]) { |left, right| left.length - right.length }
>>>>>>> Stashed changes

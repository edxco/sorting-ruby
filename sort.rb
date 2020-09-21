my_array = [15, 9, 7, 2, 3, 1]

def bubble_sorting(arr)
    for j in (0...arr.length)
       for i in (1...arr.length-j)
            if arr[i] < arr[i-1]
                arr.insert(i-1, arr[i])
                arr.delete_at(i+1)
            end
        end
    end
    return arr
end

print bubble_sorting(my_array)
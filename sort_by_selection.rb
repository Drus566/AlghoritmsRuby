# нименьшее число в массиве
def find_smallest(arr)
    smallest = arr[0]
    smallest_index = 0
    for i in 1...arr.length
        if arr[i] < smallest
            smallest = arr[i]
            smallest_index = i
        end
    end
    return smallest_index
end

array = [5,2,6,2,1,10]

puts "\nSmallest index in array: #{find_smallest(array)}\n\n"

def selection_sort(arr)
    new_arr = []
    selection_arr = arr
    for i in 0...selection_arr.length
        smallest_index = find_smallest(selection_arr)
        new_arr << arr[smallest_index]
        selection_arr.delete_at(smallest_index)
    end
    return new_arr
end

print "Sort by selection: #{selection_sort(array)}\n\n" 

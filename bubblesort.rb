def bubble_sort(array)
    n = array.length
  
    # Traverse through all array elements (outer loop)
    #note: n-1 is the "length", (n-1)-1 ensures that values are in range
    #i.e. n = 6 elements means that the range is 0-4 (5 times)
    for i in 0..(n - 2)
      # Last i elements are already in place (inner loop)
       #i.e. n = 6 elements means that the range is 0-4 (5 elements checked)
       #when i = 1, you need only check elements in range 0-3 (4 elements checked)
      for j in 0..(n - i - 2)
        # Swap elements if the next element greater than the previous element
        if array[j] > array[j + 1]
            array[j], array[j + 1] = array[j + 1], array[j]
        end
      end
    end
    array
  end
p "the example is [4,3,78,2,0,2]"
p "the sorted array is #{bubble_sort([4,3,78,2,0,2])}"
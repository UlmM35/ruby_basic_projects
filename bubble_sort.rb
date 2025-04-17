def bubble_sort(array)
    until array == array.sort
        for i in 1..array.length - 1
            first_val = array[i - 1]
            second_val = array[i]
            if (first_val > second_val)
                array[i - 1] = second_val
                array[i] = first_val
            end
        end
    end
    array          
end

bubble_sort([4,3,78,2,0,2, 102])
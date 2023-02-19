=begin

    compare one element of the array with its succeeding element
    n-1 times where n is the size of the array;
    
    used not_sorted boolean to stop the sorting if all elements are sorted;

    as after m iteration m last elements are sorted that's why loop it to only 
    n - m range where n is the size of the array;

=end

def bubble_sort(ara) 
    ara_size = ara.length
    not_sorted = true
    for i in 0..(ara_size-2) do
        if not_sorted == false 
            break
        end
        not_sorted = false
        for j in 0..(ara_size-i-2) do
            if ara[j] > ara[j+1] 
                temp = ara[j]
                ara[j] = ara[j+1]
                ara[j+1] = temp
                not_sorted = true
            end
        end 
    end
    ara
end


arr = [6,5,4,3,2,1]
p bubble_sort(arr)
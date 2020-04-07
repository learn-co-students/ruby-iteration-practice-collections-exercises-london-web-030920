def sort_array_asc(array)
    array.sort 
end 

def sort_array_desc(array)
    sorted_array = array.sort
    sorted_array.reverse
end 

def sort_array_char_count(array)
    array.sort do |char1, char2|
        char1.length - char2.length 
    end 
    # Another way: 
    # arr.sort do |char1, char2|
    #   char1.length <=> char2.length 
    # Another way:
    # arr = arr.sort_by {|x| x.length}
    # Yet another way: 
    # arr = arr.sort_by(&:length)
end 

def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end 

def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array
end

def reverse_array(array)
    array.reverse!
end 

def kesha_maker(array)
    array.each do |element|
      element.split(" ")
      element[2] = "$"
      element
    end 
end 
#     new_array = []
#     array.each do |element|
#     elements = element.split(" ")
#     elements[2] = "$"
#     new_array << elements

def find_a(array)
    array.select do |word| 
        word.start_with?("a")
    end 
end 

def sum_array(array)
    array.reduce do |sum, integer| 
        sum + integer
    end 
end 

def add_s(array)
    # array.each_with_index do |element, index|
    #     element[element.length] = "s" unless index == 1
    # end 
    array.each_with_index.map do |element, index|
        index == 1 ? element : element + "s"
    end 
end 



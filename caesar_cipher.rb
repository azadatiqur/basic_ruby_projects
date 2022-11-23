def caesar_cipher(string, num) 
    string_array = string.split(" ") #string is transformed into array of words
    code_array = []#create an empty array to contain converted words
    string_array.each_with_index do |string, index|#loop through the words
        char_array = [] #create an empty array to contain converted char
        string.each_char do |char|#loop through the characters of word
            if char.ord >= 'A'.ord && char.ord <= 'Z'.ord #check if its between 'A' and 'Z'
                char_ascii=char.ord
                if char.ord+num > 'Z'.ord 
                    char_array << ((char.ord+num-'Z'.ord)+('A'.ord-1)).chr #wrap from 'Z' to 'A'  and push it into the array
                else
                     char_array << (char.ord+num).chr
                end
            elsif char.ord >= 'a'.ord && char.ord <= 'z'.ord #check if its between 'a' and 'z'
                if char.ord+num > 'z'.ord
                    char_array << ((char.ord+num-'z'.ord)+('a'.ord-1)).chr#wrap from 'z' to 'a'  and push it into the array
                else
                     char_array << (char.ord+num).chr                
                end
            else 
                char_array << char #push non-alphabetic char
            end
        end
        code_array << char_array.join("") #convert the array to string and push it to the code_array
    end
    puts code_array.join(" ") #convert the array into string and join words using space
end


string = gets.chomp
num = (gets.chomp).to_i
caesar_cipher(string, num)
    
    
=begin
    
in the substrings function, the string is 
transformed into a array of words and then it's checked 
if the substr is in the string. At last if the substr is found, the substr is counted 
and pushed into the hash

=end
def substrings(string, substrings_dictionary) 
    hash = {}
    string_array = string.split(" ")
    string_array.each do |str|
        substrings_dictionary.each do |substr|
            new_substr = substr.downcase
            new_str = str.downcase
            if new_str.include?(new_substr) 
                if hash[new_substr] == nil
                    hash[new_substr] = 1
                else 
                    hash[new_substr] = hash[new_substr] + 1
                end
            end
        end
    end
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
user_input = gets.chomp
p substrings(user_input, dictionary)
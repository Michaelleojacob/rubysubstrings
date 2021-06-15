require 'pry'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def compare_elements (arr1, arr2)
    arr2.map do |i|
        arr1.map do |j|
            arr3 = []
            if /#{i}/.match(j.to_s)
                arr3.push(/#{i}/.match(j.to_s))
                arr3
            end
        end
    end
end

def clean_up_the_array (arr)
    arr = arr.map {|i| i.compact}
    arr2 = []
    arr.map do |i|
        i.map {|j| arr2.push(j[0])}
    end
    arr3 = []
    arr2.map {|i| arr3.push(i[0])}
    arr3
end

def my_hash(arr)
    arr.reduce(Hash.new(0)) do |word, times_used|
        word[times_used] += 1
        word
    end
end

def substrings (string, arr)
    string = string.downcase.gsub(/[^a-z0-9\s]/i, '')
    if string.match(/\s/)
        string = string.split(" ")
    else
        string = Array(string)
    end
    similar_items = compare_elements(string, arr)
    just_the_matching_words = clean_up_the_array(similar_items)
    testing = my_hash(just_the_matching_words)
end


puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
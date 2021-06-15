random_string2 = "below is to be low"
# random_string2 = "haha is one ha more than ha"

similar_items = similar_items.map {|i| i.compact}
    cleaned_up_similar_items = []
    similar_items.map do |i|
        i.map {|j| cleaned_up_similar_items.push(j[0])}
    end
    # p cleaned_up_similar_items
    removing_matchdata = []
    cleaned_up_similar_items.map {|i| removing_matchdata.push(i[0])}
    p removing_matchdata



def testing (arr1, arr2)
    arr1.map do |i|
        arr2.map do |j|
            arr3 = []
            arr3.push(/#{i}/.to_s.match(j.to_s))
            arr3.map do |item| 
                if item == nil 
                    arr3.delete(item)
                end
            end
            arr3.map do |item|
                arr4 = []
                arr4.push(item)
                arr4.each {|i| p i[0]}
                # arr5 = []
                # arr5.push(arr4.each {|i| i})
                # p arr5
            end
        end
    end


def testing (arr1, arr2)
    arr1.map do |i|
        arr2.map do |j|
            arr3 = []
            if /#{i}/.match(j.to_s)
                arr3.push(/#{i}/.match(j.to_s))
            end
            arr3.compact
            # arr3.reject {|k| p k}
            arr4 = []
            # p arr3
            # arr3.reject {|item| item.empty? == true}
            arr3 = arr3.reject{|item| item.empty?}
            p arr3
            # arr3.map {|l| arr4.push(l[0])}
            arr4 = arr4.reject{|item| item.empty?}
            # p arr4
            arr5 = []
            arr4.map do |m| 
                unless m.empty?
                    arr5.push(m)
                end
            end
            # p arr5
        end
    end
end

def lolidk(string)
    a = string.split(" ")
    b = a.map {|i| i.split("")}
    c = b.map do |i|
        b.map do |j|
            unless i == j
                if (i & j).length > 1
                    i & j
                end
            end
        end
    end
    d = c.map {|i| i.compact}
    e = d.reject {|i| i.empty?}
    f = e.map {|i| i.join("")}
    p f

end

lolidk(random_string2)


def nesting_loops(arr)
    arr.map do |i|
        arr.map do |j|
            unless i == j
                if (i & j).length > 1
                    i & j
                end
            end
        end
    end
end

def lolidk(string)
    a = string.split(" ")
    b = a.map do |c| 
        Array.new(1, c)
    end
    c = b.map do |d|
        d[0].split("")
    end
    d = Array.new(nesting_loops(c)).compact
    e = d.map do |i|
        i.compact
    end
    f = e.map do |i|
        i - ["", nil, i.empty?]
    end
    p f
end
# rofl = arr.map {|i| /#{i}/.match(string.to_s)}
rofl = arr.map do |i| 
    # /#{i}/.match(string.each.to_s)
end
# rofl = string.map {|i| /#{i}/.match(arr.to_s)}
rofl = rofl.compact
# p rofl
# p rofl.class
# p rofl.length
# p rofl[0][0]
# p rofl[0]
lol = []
rofl.map {|i| lol.push(i[0]) }
# p lol

kekw = lol.reduce(Hash.new(0)) do |word, times_used|
    word[times_used] += 1
    word
end
# p kekw

# arr.map do |i|
#     p i.to_s.match(string)
# end

# p arr & string

# a = (arr & string).reduce(Hash.new(0)) do |word, times_used|
#     word[times_used] += 1
#     word
#     p word
# end
end
>>>[[["b", "e"], ["l", "o", "w"]], [], [], [["b", "e"]], [["l", "o", "w"]]]









d = c.reduce do |x, y|
    p x & y
    binding.pry
end

c.each do |i|
    c.each do |j|
        unless i == j
            if (i & j).length > 1
                p i & j
            end
        end
    end
end

def my_hash(arr)
    arr.reduce(Hash.new(0)) do |word, times_used|
        word[times_used] += 1
        word
    end
end

def look_for_substrings(first_arr, another_arr)
    
end

puts my_hash(dictionary)

# def place_holder(string, comparison_array)
#     each_string = string.gsub(/[^[:word:]\s]/, '').split(" ")
#     arr2 = my_hash(each_string)
# end

# puts place_holder("Hello there, General Kenobi. Ah the negotiator. Another fine addition to my collection. Hello there. another.", [])



#!
# def lolidk(string)
#     a = string.split(" ")
#     b = a.map do |c| 
#         Array.new(1, c)
#     end
#     c = b.map do |d|
#         d[0].split("")
#     end
#     d = c.reduce do |x, y|
#         p x.include? "low"
#         # binding.pry
#     end
#     # p d

# end

# lolidk(random_string2)
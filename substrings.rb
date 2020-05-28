def substrings(string, dict)
    result_hash = {}

    s_copy = string.downcase
    split_arr = s_copy.split()
    # print split_arr

    for word_to_search in dict do
        for word in split_arr
            if word.include?(word_to_search)
                if result_hash.has_key?(word_to_search)
                    result_hash[word_to_search] += 1
                else
                    result_hash[word_to_search] = 1
                end
            end
        end
    end
    puts result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
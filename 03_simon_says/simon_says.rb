def echo what
    return what
end

def shout what
    return what.upcase
end

def repeat (what, repetition=2)
    repeated = []
    repetition.times do
        repeated.push what
    end
    echo = repeated.join(" ")
    return echo
end

def start_of_word (word, length)
    word = word[0..length-1]
    return word
end

def first_word (words)
    if words.include? ","
        words = words.split(",")[0]
    else
        words = words.split(" ")[0]
    end
    return words
end

def titleize word
    word = word.split(" ").map(&:capitalize)
    iterate = 1
    little_iterate = 0
    little_words = ["And", "Over", "It", "Is", "The"]
    until iterate > word.length
        until (little_iterate == little_words.length)
            if word[iterate] == little_words[little_iterate]
                word[iterate] = word[iterate].downcase
            end
            little_iterate += 1
        end
        iterate += 1
        little_iterate = 0
    end
    return word.join(" ")
end
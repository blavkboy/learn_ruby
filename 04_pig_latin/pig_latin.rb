def translate word
    word = word.split(" ")
    words = word.length
    iterate = 0
    consonants = ["b", "c", "d", "f", "g", "h", "j", "l", "m", "n",
                        "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    until iterate == words
        if (word[iterate][0] == "a") or (word[iterate][0] == "e") or 
                (word[iterate][0] == "u") or (word[iterate][0] == "i") or (word[iterate][0] == "0")
            word[iterate] += "ay"
        else
            if (consonants.include? word[iterate][2]) and (consonants.include? word[iterate][1]) and (consonants.include? word[iterate][0])
                consonant = word[iterate][0..2]
                word[iterate] = word[iterate][3..-1]
                word[iterate] += consonant + "ay"
            else if (consonants.include? word[iterate][0]) and (word[iterate][1..2] == "qu")
                consonant = word[iterate][0..2]
                word[iterate] = word[iterate][3..-1]
                word[iterate] += consonant + "ay"
            else if (consonants.include? word[iterate][1]) or (word[iterate][0..1] == "qu")
                consonant = word[iterate][0..1]
                word[iterate] = word[iterate][2..-1]
                word[iterate] += consonant + "ay"
            else
                consonant = word[iterate][0]
                word[iterate] = word[iterate][1..-1]
                word[iterate] += consonant + "ay"
            end
            end
            end
        end
        iterate += 1
    end
    return word.join(" ")
end
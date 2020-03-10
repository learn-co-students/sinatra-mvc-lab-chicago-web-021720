require 'pry'
class PigLatinizer

    def piglatinize_word(word)
        vowels = ["a", "e", "o", "u", "i"]

        if vowels.include?(word.downcase[0])
            word + "way"
        else 
            arr_of_chr = word.split("")
            start = arr_of_chr.find_index { |i| vowels.include?(i) }
            stop = (start-1)

            first = arr_of_chr[start..-1] 
            second = arr_of_chr[0..stop]
            whole_word = first + second + ["ay"]
            whole_word.join("")
        end      
    end

    def piglatinize(phrase)
        arr_of_words = phrase.split(" ")
        arr_pig_latin = arr_of_words.map do |m|
            piglatinize_word(m)
        end 
        arr_pig_latin.join(" ")
    end 
    # binding.pry
end 
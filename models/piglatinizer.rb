class PigLatinizer

    def initialize()
    end

    def get_beginning_consonants(word)
        word.scan(/^[bcdfghjklmnpqrstvwxyz]+/i)
    end

    def piglatinize(phrase)
        latinized = phrase.split(" ").map do |word|
            beginning_consonants = get_beginning_consonants(word)
            if beginning_consonants == []
                word + "way"
            else
                word = word.split('')
                word.shift(beginning_consonants[0].length)
                word.join('') + beginning_consonants[0] + "ay"
            end
        end
        latinized.join(" ")
    end

end
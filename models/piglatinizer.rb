class PigLatinizer
    # attr_accessor :input

    def piglatinize(input)
        arr_of_words = input.split(" ")
        arr_of_words.map do |word|
            self.piglatinize_word(word)
        end.join(" ")
    end

    def piglatinize_word(word)
        if word.start_with?(/[aeoui|AEOUI]/)
            "#{word}way"
        else
            arr_of_parts = word.partition(/[aeoui]/)
            first_part = arr_of_parts.shift
            first_latinized = "#{first_part}ay"
            arr_of_parts << first_latinized
            arr_of_parts.join
        end
    end
end
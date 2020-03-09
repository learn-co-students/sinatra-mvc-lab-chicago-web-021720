class PigLatinizer

    @@vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    
    def piglatinize(text)
        words = text.split
        piglatinized_words = words.map { |word| PigLatinizer.piglatinize_word(word) }
        piglatinized_words.join(' ')
    end

    def self.piglatinize_word(word)
        # If the first letter is a vowel, just tack on 'way' to the end of the word
        if self.vowels.include? word[0].downcase
            word + 'way'
        
        # If the first letter is a consonant, find the index of the first vowel
        else
            first_vowel_index = word.index(/[aeiouy]/)
            beginning_slice = word[0,first_vowel_index]
            word[first_vowel_index..-1] + beginning_slice + 'ay'
        end
    end

    def self.vowels
        @@vowels
    end
end

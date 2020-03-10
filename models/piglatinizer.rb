require 'pry'
class PigLatinizer
    attr_accessor :text, :piglat

    # def intialize(text)
    #     self.text = text
    # end

    def piglatinize(text)
        vowels = ["a","e","i","o","u","A","E","I","O","U"]
        self.piglat = []
        text.split(' ').each do |word|
            v_count = word[0].scan(/[aeouiAEIOU]/).count
            c_count = word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).count
            
            if v_count == 1
                self.piglat << word + "way"
            else
                split_array = word.split(/([aeiou]+)/)
                first_sound = split_array[0]
                new_word_array = split_array - [first_sound]
                new_word = new_word_array.join()
                self.piglat << (new_word + first_sound + "ay")
            end
            
        end
        result = self.piglat.join(' ')
    end
end
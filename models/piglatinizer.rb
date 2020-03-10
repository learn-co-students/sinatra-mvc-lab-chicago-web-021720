class PigLatinizer 
    attr_accessor :string, :array_of_words, :consonants, :vowels
    def initialize(string=nil)
        @string = string
    end 


    def do_your_thing
        @string = @string.split(" ")
        @consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
        @vowels = ["a","e","o","u","i"]
        @array_of_words = []
        for i in @string
            @array_of_words.push(i.split(""))
        end
        30.times do splits_the_sentence
        end

        for i in @array_of_words
            if @vowels.include?(i[i.count])
                i.push("way")
            else
                i.push("ay")
            end
        end
        answer = []
        for i in @array_of_words
            answer.push(i.join(''))
        end
        answer
        answer = answer.join(" ")
    end
        
    def splits_the_sentence
        for i in @array_of_words
            if @consonants.include?(i[0])
                i.push(i[0])
                i.shift
            end
        end     
        @array_of_words 
    end

    



    #     @string.push(@string[0] + 'ay')
    #     @string.shift        
    #     @string = @string.join('')
    #     @string
    # end
end


test = PigLatinizer.new("this is a test")

p test.do_your_thing


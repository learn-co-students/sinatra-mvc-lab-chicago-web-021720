class PigLatinizer

    def initialize
    end

    def piglatinize(str)
        str.split(' ').map { |word| word.match(/^[AEIOUaeiou]/) ? word + 'way' : word.match(/^[^AEIOUaeiou]+(\w+)/)[-1] + word.match(/^[^AEIOUaeiou]+/)[0] + 'ay' }.join(' ')
    end

end
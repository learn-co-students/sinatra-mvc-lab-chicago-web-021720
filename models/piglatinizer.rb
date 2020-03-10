class PigLatinizer
  def piglatinize(words)
    lat = words.split(' ').map do |w|
      if ['a','e','i','o','u'].include?(w[0].downcase)
        "#{w}way"
      else
          vowelindex = 0
          while !['a','e','i','o','u'].include?(w[vowelindex].downcase) do
            vowelindex += 1
          end
          "#{w[vowelindex..-1]}#{w[0...vowelindex]}ay"
        end
    end
    lat.join(' ')
  end
end

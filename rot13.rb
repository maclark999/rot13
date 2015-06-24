class Rot13
  def self.decipher(string)
    alpha = ('a'..'z').to_a
    newstring = string.downcase.split("")
    sentence = []
    newstring.each do |letter|
      unless letter =~ /[a-z]/
        sentence << letter
      else
        rotletter = alpha.index(letter) + 13
          if rotletter > 25
            rotindex = rotletter - 26
            newletter = alpha.at(rotindex)
            sentence << newletter
          else
            newletter = alpha.at(rotletter)
            sentence << newletter
          end
      end
    end
    puts sentence.join("").capitalize
  end
end

Rot13.decipher(ARGV[0])

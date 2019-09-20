# Your TextAnalyzer model code will go here.
class TextAnalyzer 

    attr_reader :text

    def initialize(text)
        @text = text.downcase
    end 

    def count_of_words
        text.split(" ").count 
    end

    def count_of_vowels
        character_array = text.split("")
        number = 0
        character_array.each do |c|
            if c == "a" || c == "e" || c == "i" || c == "o" || c == "u"
                number += 1
            end 
        end 
        number 
    end 

    def count_of_consonants 
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end 

    def most_used_letter
        s1 = text.gsub(/[^a-z]/, '') # gets rid of non-letters
        arr = s1.split('')
        arr1 = arr.uniq
        arr2 = {}
     
        arr1.map do |c|
          arr2[c] =  arr.count(c)
        end
     
        biggest = { arr2.keys.first => arr2.values.first }
     
        arr2.each do |key, value|
          if value > biggest.values.first
            biggest = {}
            biggest[key] = value
          end
        end
     
        biggest
      end

end 
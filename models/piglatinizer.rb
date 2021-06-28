class PigLatinizer

 
    def piglatinize(user_input)
        words = user_input.split(" ")
        words.map do |w|
            vowel_break = w.split(/([aeiouAEIOU].*)/)
            before_vowel = vowel_break.first
            if before_vowel.empty?
                w + "way"
            else
                vowel_break.reverse.join + "ay"
            end
        end.join(" ")
    end
end
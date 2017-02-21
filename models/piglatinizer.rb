class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    piglatin_end = "ay"

    piglatin_vowel_end = "way"

    split_word = word.split /([aeiou].*)/

    if vowels.include? word[0]
      word + piglatin_vowel_end
    else
      split_word[1] + split_word[0] + piglatin_end
    end
  end

  def to_pig_latin(string)
    string.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end

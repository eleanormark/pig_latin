def translate(words)
  pig_latin = words.split.map do |word|
    is_capitalize = (word.capitalize == word)
    word.downcase!
    cons = /(^(qu)+|^[^aeiou]+)/i.match(word).to_s 
    word = word.gsub(cons, '') + cons + "ay"
    punc = /[!?.,]+/.match(word).to_s
    word = word.gsub(punc, "") + punc
    word = is_capitalize ? word.capitalize : word
  end
  pig_latin.join(' ')
end

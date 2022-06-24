def grammar_checker(text)


  fail "Not a sentence" if text.empty?
  
  first_char = text.split("").first
  final_char = text.split("").last

  capital_letter = first_char == first_char.upcase
  sentence_ender = /[?!.]/.match?(final_char)

  return capital_letter && sentence_ender

  

end
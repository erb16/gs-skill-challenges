class GrammarStats
  def initialize
    # ...

    @total_texts = 0
    @good_grammar_texts = 0
    

  end

  def check(text) # text is a string
    
    fail "Not a sentence" if text.empty?
    
    first_char = text.split("").first
    final_char = text.split("").last

    capital_letter = first_char == first_char.upcase
    sentence_ender = /[?!.]/.match?(final_char)

    increment_good if capital_letter && sentence_ender 
    increment_total
    
  end

  def percentage_good

    division = (goodgrammar.to_f / total.to_f)
  
    percentage = division * 100
    return percentage
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end

  private 
  def total
    @total_texts
  end

  def increment_total
    @total_texts += 1
  end

  def goodgrammar
    @good_grammar_texts
  end

  def increment_good
    @good_grammar_texts += 1
  end

end
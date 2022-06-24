def task_tracker(text)

  fail "No text provided." if text.empty?

  return text.upcase.include?("#TODO")
 
end
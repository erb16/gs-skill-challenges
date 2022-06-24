def reading_time(text)
  #count words in a text
  words = text.split.size
  if(words == 0)
    return 0
  elsif(words <= 200)
    return 1
  else 
    return (words / 200.to_f).ceil

  end
  
end
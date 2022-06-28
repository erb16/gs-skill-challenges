class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    # Returns the title as a string
    return @title
  end

  def contents
    # Returns the contents as a string
    fail "There is no content to read" if @contents.split.size == 0
    return @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    return contents.split(" ").size
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    fail "Reading speed must be above zero." unless wpm > 0
    # fail "There is no content" unless @contents.split.size > 0
  
    words = @contents.split.size
    return (words / wpm.to_f).ceil


  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.

    # fail "There is no content to read" if @contents.split.size == 0

    number_readable_words = wpm * minutes
    #returns text of appropriate length
    start_from = @furthest_word_read
    end_at = @furthest_word_read + number_readable_words
    readable_text = @contents.split[start_from...end_at]
    @furthest_word_read = end_at
    return readable_text.join(" ")



    
  end
end
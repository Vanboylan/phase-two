class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @curr_pos = 0
    end
  
    def title
      @title
    end
  
    def contents
      @contents
    end
  
    def count_words
      @contents.split(" ").count
    end
  
    def reading_time(wpm) 
      (self.count_words / wpm.to_f).round(2)
    end
  
    def reading_chunk(wpm, minutes) 
        amount_words = (wpm * minutes)
        @curr_pos = 0 if @curr_pos >= self.count_words
        end_point = @curr_pos + amount_words
        chunk = @contents.split(" ")[(@curr_pos...end_point)].join(" ")
        @curr_pos = end_point
        #binding.irb
        return chunk
    end
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.

  end


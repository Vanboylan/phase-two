class DiaryEntry
    def initialize(title, contents)
      @title = title
      @contents = contents
      @start_index = 0
    end

    def title
      @title
    end

    def contents
      @contents
    end

    def count_words
      @contents.split.count
    end

    def reading_time(wpm)
      self.count_words / wpm.to_f
      # wpm is an integer representing the number of words the
      # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end

    def reading_chunk(wpm, minutes)
      @start_index = 0 if @start_index > contents.split.count - 1
      size = wpm * minutes
      chunk = @contents.split.slice(@start_index, size).join(" ")
      @start_index += size
      return chunk
    end
  end
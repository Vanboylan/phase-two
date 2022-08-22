class Diary
    def initialize
      @entries = []
      @contacts = {}
    end
  
    def add(entry) # entry is an instance of DiaryEntry
        @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
        return @entries.sum(&:count_words)
      # Returns the number of words in all diary entries
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
    end
  
    def reading_time(wpm) 
        return (self.count_words / wpm.to_f).ceil
      # wpm is an integer representing
      # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
      entries_by_time = {}
      @entries.each do |entry|
        entries_by_time.store(entry, entry.count_words)
      end 
      words_read = wpm * minutes
      sorted_entries = entries_by_time.sort_by{|k, v| v}
      sorted_entries.delete_if {|entry, length|
        length > words_read}
      return sorted_entries.reverse.first[0]
    end

    def update_contacts
      @entries.each { |entry|
        entry.list_contacts.each { |name, number|
          @contacts.store(name, number) if !@contacts.include?(name)}
        }
    end

    def contacts
      @contacts
    end
  end

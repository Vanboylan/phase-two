require "../lib/Diary_class.rb"
require "../lib/Diary_class_entry.rb"

RSpec.describe DiaryEntry do
    it "constructs" do
      monday = DiaryEntry.new("Monday", "I went for a walk")
    end
  
    class DiaryEntry
    end
  
    it "gives title" do
      monday = DiaryEntry.new("Monday", "I went for a walk")
      expect(monday.title).to eq "Monday"
    end
  
    it "gives contents" do
      monday = DiaryEntry.new("Monday", "I went for a walk")
      expect(monday.contents).to eq "I went for a walk"
    end
  
    it "counts words" do
      monday = DiaryEntry.new("Monday", "I went for a walk")
      expect(monday.count_words).to eq 5
    end
  
    it "gives reading time" do
      monday = DiaryEntry.new("Monday", "I went for a walk")
      expect(monday.reading_time(2)).to eq 2.5
    end
  
    it "gives a chunk" do
      monday = DiaryEntry.new("Monday", "I went for a walk")
      expect(monday.reading_chunk(2, 2)).to eq "I went for a"
    end
  
    it "gives next chunk" do
      monday = DiaryEntry.new("Monday", "I went for a walk")
      monday.reading_chunk(2, 2)
      expect(monday.reading_chunk(2, 2)).to eq "walk"
    end

    it "returns to start when it finishes the text" do
        monday = DiaryEntry.new("Monday", "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20")
        monday.reading_chunk(2, 2)
        monday.reading_chunk(2, 2)
        monday.reading_chunk(2, 2)
        monday.reading_chunk(2, 2)
        monday.reading_chunk(2, 2)
        expect(monday.reading_chunk(2, 2)).to eq "1 2 3 4"
    end
  
  end
  
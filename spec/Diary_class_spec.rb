require "../lib/Diary_class.rb"
require "../lib/Diary_class_entry.rb"

RSpec.describe "Diary Integration" do
  context "when we have a library of entries" do
    it "returns all diary entries" do
      janet = Diary.new
      monday = DiaryEntry.new("Monday", "I went for a walk")
      tuesday = DiaryEntry.new("Tuesday", "I had potatoes")
      janet.add(monday)
      janet.add(tuesday)
      expect(janet.all).to eq [monday, tuesday]
    end
  end

  it "counts total words in all diary entries" do
    janet = Diary.new
    monday = DiaryEntry.new("Monday", "I went for a walk")
    tuesday = DiaryEntry.new("Tuesday", "I had potatoes")
    janet.add(monday)
    janet.add(tuesday)
    expect(janet.count_words).to eq 8
  end

  it "calculates total reading time" do
    janet = Diary.new
    monday = DiaryEntry.new("Monday", "I went for a walk")
    tuesday = DiaryEntry.new("Tuesday", "I had potatoes")
    janet.add(monday)
    janet.add(tuesday)
    expect(janet.reading_time(2)).to eq 4
  end

  it "gives us the closest diary entry in reading time to our parameters" do
    janet = Diary.new
    monday = DiaryEntry.new("Monday", "1 " * 100)
    tuesday = DiaryEntry.new("Tuesday", "2 " * 150)
    wednesday = DiaryEntry.new("Wednesday", "3 " * 250)
    thursday = DiaryEntry.new("Thursday", "4 " * 200)
    janet.add(monday)
    janet.add(tuesday)
    janet.add(wednesday)
    janet.add(thursday)
    expect(janet.find_best_entry_for_reading_time(19, 10)).to eq tuesday
  end

end


RSpec.describe Diary do
  it "constructs" do
    diary = Diary.new
  end

  class Diary
  end

  context "initially" do
    it "is empty" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end
end








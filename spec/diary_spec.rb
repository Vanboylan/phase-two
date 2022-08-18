require "./diary.rb"

RSpec.describe Diary do
  it "returns the first five words" do
    diary = Diary.new
    result = diary.make_snippet("hello world hello world hello world")
    expect(result).to eq "hello world hello world hello..."
  end

  it "counts ten words" do
    diary = Diary.new
    result = diary.count_words("hello world hello world hello world hello world hello world")
    expect(result).to eq 10
  end
end
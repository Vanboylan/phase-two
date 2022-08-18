require "../lib/DiaryEntry.rb"

RSpec.describe DiaryEntry do
  it "method title returns 'hello' for diary entry with title 'hello'" do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.title).to eq "hello"
  end
  it "method contents returns 'world' for diary entry with contents 'world'" do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.contents).to eq "world"
  end
  it "method count words returns 1 when contents = 'world'" do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.count_words).to eq 1
  end
  it "method count words returns 5 when contents = 'world, world, world, world, world'" do
    hello = DiaryEntry.new("hello", "world, world, world, world, world")
    expect(hello.count_words).to eq 5
  end
  it "method count words returns 10 when contents = 'world, world, world, world, world, world, world, world, world, world'" do
    hello = DiaryEntry.new("hello", "world, world, world, world, world, world, world, world, world, world")
    expect(hello.count_words).to eq 10
  end
  it "the method reading time returns 0.005 if given 200 and contents == 'world'." do
    hello = DiaryEntry.new("hello", "world")
    expect(hello.reading_time(200)).to eq 0.005
  end
  it "the method reading time returns 1 if given 200 and contents == 'world '*200." do
    hello = DiaryEntry.new("hello", ("world " * 200))
    expect(hello.reading_time(200)).to eq 1
  end
  it "the method reading time returns 1 if given 200 and contents == 'world '*200." do
    hello = DiaryEntry.new("hello", ("world " * 50))
    expect(hello.reading_time(5)).to eq 10
  end

  it "the method reading chunk returns 'world world world' when given 1 word per minute and three minutes to read" do
    hello = DiaryEntry.new("hello", "world world world today today today")
    expect(hello.reading_chunk(1, 3)).to eq 'world world world'
  end

  it "the method reading chunk returns 'today today today' when given 1 word per minute and three minutes to read and call method again" do
    hello = DiaryEntry.new("hello", "world world world today today today")
    hello.reading_chunk(1, 3)
    expect(hello.reading_chunk(1, 3)).to eq 'today today today'
  end

  it "the method reading chunk returns 'world world world' when given 1 word per minute and three minutes to read and call method twice more" do
    hello = DiaryEntry.new("hello", "world world world today today today")
    hello.reading_chunk(1, 3)
    hello.reading_chunk(1, 3)
    expect(hello.reading_chunk(1, 3)).to eq 'world world world'
  end

  it "the method reading chunk returns 'hello world it is hot' when given 200 wpm and 0.025 minutes" do
    hello = DiaryEntry.new("hello", "hello world it is hot hot it is world hello quidditch")
    expect(hello.reading_chunk(200, 0.025)).to eq 'hello world it is hot'
  end

  it "the method reading chunk returns 'quidditch' when given 200 wpm and 0.025 minutes" do
    hello = DiaryEntry.new("hello", "hello world it is hot hot it is world hello quidditch")
    hello.reading_chunk(200, 0.025)
    hello.reading_chunk(200, 0.025)
    expect(hello.reading_chunk(200, 0.025)).to eq 'quidditch'
  end
end
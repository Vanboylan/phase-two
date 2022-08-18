require "./counter.rb"

RSpec.describe Counter do
  it "returns 'Counted to 5 so far.' when 5 is added" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end
  
  it "returns 'Counted to 0 so far.' when 0 is added" do
    counter = Counter.new
    counter.add(0)
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "returns 'Counted to 50 so far.' when 10 is added 5 times" do
    counter = Counter.new
    counter.add(10)
    counter.add(10)
    counter.add(10)
    counter.add(10)
    counter.add(10)
    result = counter.report
    expect(result).to eq "Counted to 50 so far."
  end
end
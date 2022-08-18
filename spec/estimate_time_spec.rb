require "./estimate_time.rb"

describe "estimate reading time" do
  it "returns 1 for less than 200 words" do
    result = estimate_time("hello world")
    expect(result).to eq 1
  end

  it "returns 2 for 300 words" do
    result = estimate_time("word " * 300)
    expect(result).to eq 2
  end

  it "returns 2 for 400 words" do
    result = estimate_time("word " * 400)
    expect(result).to eq 2
  end

  it "returns 1 for 200 words" do
    result = estimate_time("word " * 200)
    expect(result).to eq 1
  end

  it "returns 0 for empty string" do
    result = estimate_time("")
    expect(result).to eq 0
  end

  context "when input is nil" do
    it "fails" do
      expect { estimate_time(nil) }.to raise_error "Nil input."
    end
  end
end


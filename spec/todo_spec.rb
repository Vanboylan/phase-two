require "./todo.rb"

describe "todo" do
  it "outputs false for 'hello world'" do
    result = todo("hello world")
    expect(result).to eq false
  end

  it "outputs true for '#TODO hello world'" do
    result = todo("#TODO hello world")
    expect(result).to eq true
  end

  it "outputs false for 'TODO hello world" do
    result = todo("TODO hello world")
    expect(result).to eq false
  end

  it "outputs false for '#todo hello world" do
    result = todo("#todo hello world")
    expect(result).to eq false
  end

  it "outputs true for 'hel#TODOlo world'" do
    result = todo("hel#TODOlo world")
    expect(result).to eq true
  end

  it "outputs false for empty string" do
    result = todo("")
    expect(result).to eq false
  end

  context "when input is nil" do
    it "fails" do
      expect { todo(nil) }.to raise_error "Nil input"
    end
  end
end
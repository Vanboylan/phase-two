require "./grammar_check.rb"

describe "grammar check" do
  it "returns true for a string starting with upper case and ending with full stop" do
    result = grammar_check("Hello world.")
    expect(result).to eq true
  end

  context "nil input" do
    it "fails" do
      expect { grammar_check(nil) }.to raise_error "Nil input."
    end
  end
      
end
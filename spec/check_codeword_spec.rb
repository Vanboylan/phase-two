require "./check_codeword.rb"

describe "check codeword" do
  it "returns 'Correct! Come in.' when codeword is horse" do
  codeword = "horse"
  result = check_codeword("horse")
  expect(result).to eq "Correct! Come in."
  end
end

describe "check codeword" do
  it "returns 'Close, but nope.' if codeword starts with h and ends in e" do
  codeword = "hope"
  result = check_codeword("hope")
  expect(result).to eq "Close, but nope."
  end
end

describe "check codeword" do
  it "returns 'WRONG!' when codeword does not match 'horse' or start with h and end in e" do
  codeword = "carrot"
  result = check_codeword("carrot")
  expect(result).to eq "WRONG!"
  end
end
require "./report_length"

describe "report length" do
  it "returns a string saying 'This string was X characters long.' Where X is the string length" do
    string = "Hi there mate"
    result = report_length(string)
    expect(result).to eq "This string was 13 characters long."
  end
end

describe "report length" do
    it "returns a string saying 'This string was X characters long.' Where X is the string length" do
      string = "You are a mad man Jonathan!"
      result = report_length(string)
      expect(result).to eq "This string was 27 characters long."
    end
end

describe "report length" do
  it "returns a string saying 'This string was X characters long.' Where X is the string length" do
    string = ""
    result = report_length(string)
    expect(result).to eq "This string was 0 characters long."
  end
end
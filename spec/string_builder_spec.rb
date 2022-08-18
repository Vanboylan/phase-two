require "./string_builder.rb"

RSpec.describe StringBuilder do
  it "adds Hello to string" do
  string = StringBuilder.new
  string.add("Hello")
  result = string.output
  expect(result).to eq "Hello"
  end

  it "returns 5 as string length" do
    string = StringBuilder.new
    string.add("hello")
    result = string.size
    expect(result).to eq 5
  end

  it "adds Hello and world to string" do
    string = StringBuilder.new
    string.add("Hello ")
    string.add("World!")
    result = string.output
    expect(result).to eq "Hello World!"
  end
end
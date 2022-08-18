require "./greet.rb"

describe "greet" do
  it "greets user with their name" do
  name = "Ryan"
  result = greet(name)
  expect(result).to eq "Hello, Ryan!"
  end
end
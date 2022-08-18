require "./gratitudes.rb"

RSpec.describe Gratitudes do
  it "outputs 'Be grateful for: happiness' when happiness is added" do
  gratitude = Gratitudes.new
  gratitude.add("happiness")
  result = gratitude.format
  expect(result).to eq "Be grateful for: happiness"
  end

  it "outputs 'Be grateful for: happiness, love, understanding'" do
  gratitude = Gratitudes.new
  gratitude.add("happiness")
  gratitude.add("love")
  gratitude.add("understanding")
  result = gratitude.format
  expect(result).to eq "Be grateful for: happiness, love, understanding"
  end

end
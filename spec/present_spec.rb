require "./present.rb"

RSpec.describe Present do
  it "unwraps carrots" do
  present = Present.new
  present.wrap("carrots")
  result = present.unwrap
  expect(result).to eq "carrots"
  end

  context "when nothing is wrapped" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end
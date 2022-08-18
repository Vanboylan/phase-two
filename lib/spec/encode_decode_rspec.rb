require "./encode_decode.rb"

describe "encode decode" do
  it "outputs 'EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL' with 'theswiftfoxjumpedoverthelazydog' and 'secretkey'" do
    result = encode("theswiftbrownfoxjumpedoverthelazydog", "secretkey")
    expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end

  it "returns decoded string" do
    result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
    expect(result).to eq "theswiftfoxjumpedoverthelazydog"
  end
end
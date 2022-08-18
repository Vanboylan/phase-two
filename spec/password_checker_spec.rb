require "./password_checker.rb"

RSpec.describe PasswordChecker do
  it "returns true for an 8 letter word" do
    password = PasswordChecker.new
    result = password.check("ninenine")
    expect(result).to eq true
  end

  context "when string is under 8 characters" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("hello") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
  
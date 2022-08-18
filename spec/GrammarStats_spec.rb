require "../lib/GrammarStats.rb"
RSpec.describe GrammarStats do
  it "the check method returns true if passed 'My name is Jonas.'" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("My name is Jonas.")).to eq true
  end
  it "the check method returns false if passed 'my name is Jonas.'" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("my name is Jonas.")).to eq false
  end
  it "the check method returns false if passed 'My name is Jonas!'" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("My name is Jonas!")).to eq true
  end
  it "the check method returns true if passed 'What's your name?'" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("What's your name?")).to eq true
  end
  it "the check method returns false if passed 'What's your name'" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("What's your name")).to eq false
  end
  it "the check method returns false if passed 'What's your name?'" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("5hat's your name?")).to eq false
  end
  it "the percentage good method returns 0 when given one false check only'" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("5hat's your name?")
    expect(grammar_stats.percentage_good).to eq 0
  end
  it "the percentage good method returns 33.33 when given 2 false and 1 true checks" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("5hat's your name?")
    grammar_stats.check("My name is Jonas!")
    grammar_stats.check("my name is Jonas.")
    expect(grammar_stats.percentage_good).to eq 33.33
  end
  it "the percentage good method returns 66.67 when given 2 true and 1 false checks" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("What's your name?")
    grammar_stats.check("My name is Jonas!")
    grammar_stats.check("my name is Jonas.")
    expect(grammar_stats.percentage_good).to eq 66.67
  end
  it "the percentage good method returns 20 when given 4 false and 1 true checks" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("5hat's your name?")
    grammar_stats.check("5hat's your name?")
    grammar_stats.check("5hat's your name?")
    grammar_stats.check("My name is Jonas!")
    grammar_stats.check("my name is Jonas.")
    expect(grammar_stats.percentage_good).to eq 20
  end
end
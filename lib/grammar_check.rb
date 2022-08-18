def grammar_check(text)
endings = ["!", "?", "."]
if text.nil?
  fail "Nil input."
else
  text[0].upcase == text[0] && endings.include?(text[-1])
end
end
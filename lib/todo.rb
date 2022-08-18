def todo(string)
  fail "Nil input" if string.nil?
  string.include?("#TODO")
end
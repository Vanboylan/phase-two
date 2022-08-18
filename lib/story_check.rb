=begin
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.
=end

result = grammar_check(text)

result: true or false
text: a string

grammar_check("Hello world.") => true
grammar_check("hello world.") => false
grammar_check("Hello world") => false
grammar_check("Hello world?") => true
grammar_check("Hello world!") => true
grammar_check("hello world?") => false
grammar_check(nil) => "Nil input."
=begin
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.
=end

#todo checks a string to see if it includes "#TODO"
result = todo(string)

string: a string of text
result: a boolean value

#the method doesn't print anything or have any other side-effects

todo("hello world") => false
todo("#TODO hello world") => true
todo("TODO hello world") => false
todo("#todo hello world") => false
todo("hel#TODOlo world") => true
todo("") => false
todo(nil) => throws an error
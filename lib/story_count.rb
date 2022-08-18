=begin
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.
=end

time_to_read = estimate_time(text)

time_to_read: an integer in minutes
text: a string

estimate_time("one two three") => 1
estimate_time(nil) throws an error
estimate_time("") => 0
estimate_time(TWO_HUNDRED_WORDS) => 1
estimate_time(FOUR_HUNDRED_WORDS) => 2
estimate_time(THREE_HUNDRED_WORDS) => 2
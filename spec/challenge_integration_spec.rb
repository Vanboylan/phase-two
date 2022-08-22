=begin
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries
=end

require "../lib/class_todolist.rb"
require "../lib/class_todo.rb"
require "../lib/Diary_class_entry.rb"
require "../lib/Diary_class.rb"

RSpec.describe "integration" do
  it "displays a list of phone numbers within diary entries" do
    monday = Diary.new
    feelings = DiaryEntry.new("Sad", "My dog died today but I met the love of my life")
    monday.add(feelings)
    feelings.add_contact("John", "07733773773")
    expect(feelings.list_contacts).to eq "John" => "07733773773"
  end

  it "displays a list of phone numbers from diary entries" do
    monday = Diary.new
    feelings = DiaryEntry.new("Sad", "My dog died today but I met the love of my life")
    feelings.add_contact("John", "07733773773")
    monday.add(feelings)
    monday.update_contacts
    expect(monday.contacts).to eq "John" => "07733773773"
  end

  it "adds 'adds todo tasks and skips repeat phone numbers in diary" do
    monday = Todo.new
    monday.add("walk dog")
    monday.add("walk cat")
    emotions = Diary.new
    feelings = DiaryEntry.new("Sad", "My dog died today but I met the love of my life")
    feelings.add_contact("John", "07733773773")
    feelings.add_contact("Mick", "08823773773")
    feelings.add_contact("John", "07733773773")
    enmotions.add(feelings)
    emotions.update_contacts
    expect(emotions.contacts).to eq "John" => "07733773773", "Mick" => "08823773773"
    expect(monday.view_tasks).to eq "1, walk dog\n2, walk cat\n"
  end

  it "deletes 'walk dog' when given 1 as a parameter for complete method" do
    monday = Todo.new
    monday.add("walk dog")
    monday.add("walk cat")
    monday.complete(1)
    expect(monday.view_tasks).to eq "1, walk cat\n"
  end
end


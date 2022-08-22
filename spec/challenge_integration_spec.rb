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

  it "displays a list of phone numbers from diary entries" do
    monday = Diary.new
    feelings = DiaryEntry.new("Sad", "My dog died today but I met the love of my life")
    feelings.add_contact("John", "07733773773")
    feelings.add_contact("Michael", "07743773773")
    feelings.add_contact("Harry", "07739973773")
    monday.add(feelings)
    monday.update_contacts
    expect(monday.contacts).to eq "John" => "07733773773", "Michael" => "07743773773", "Harry" => "07739973773"
  end

  it "displays a list of phone numbers from diary entries" do
    monday = Diary.new
    feelings = DiaryEntry.new("Sad", "My dog died today but I met the love of my life")
    feelings.add_contact("John", "07733773773")
    feelings.add_contact("Michael", "07743773773")
    feelings.add_contact("Harry", "07739973773")
    feelings.add_contact("Michael", "07743773773")
    monday.add(feelings)
    monday.update_contacts
    expect(monday.contacts).to eq "John" => "07733773773", "Michael" => "07743773773", "Harry" => "07739973773"
  end

  context "when we have a library of entries" do
    it "returns all diary entries" do
      janet = Diary.new
      monday = DiaryEntry.new("Monday", "I went for a walk")
      tuesday = DiaryEntry.new("Tuesday", "I had potatoes")
      janet.add(monday)
      janet.add(tuesday)
      expect(janet.all).to eq [monday, tuesday]
    end
  end

  it "gives contents" do
    monday = DiaryEntry.new("Monday", "I went for a walk")
    expect(monday.contents).to eq "I went for a walk"
  end

  it "gives us the closest diary entry in reading time to our parameters" do
    janet = Diary.new
    monday = DiaryEntry.new("Monday", "1 " * 100)
    tuesday = DiaryEntry.new("Tuesday", "2 " * 150)
    wednesday = DiaryEntry.new("Wednesday", "3 " * 250)
    thursday = DiaryEntry.new("Thursday", "4 " * 200)
    janet.add(monday)
    janet.add(tuesday)
    janet.add(wednesday)
    janet.add(thursday)
    expect(janet.find_best_entry_for_reading_time(19, 10)).to eq tuesday
  end

  it "adds a new todo to the list" do
    homework = TodoList.new
    monday = Todo.new("Mathematics")
    homework.add(monday)
  end

  class TodoList
  end

  it "returns the tasks" do
    task_1 = Todo.new("Walk the dog")
    expect(task_1.task).to eq "Walk the dog"
  end

  it "lists complete items" do
    homework = TodoList.new
    monday = Todo.new("Mathematics")
    homework.add(monday)
    tuesday = Todo.new("English")
    homework.add(tuesday)
    tuesday.mark_done!
    expect(homework.complete).to eq [tuesday]
  end

  it "lists incomplete items" do
    homework = TodoList.new
    monday = Todo.new("Mathematics")
    homework.add(monday)
    tuesday = Todo.new("English")
    homework.add(tuesday)
    monday.mark_done!
    expect(homework.incomplete).to eq [tuesday]
  end

  it "displays a list of phone numbers from diary entries" do
    monday = Diary.new
    feelings = DiaryEntry.new("Sad", "My dog died today but I met the love of my life")
    feelings.add_contact("John", "07733773773")
    feelings.add_contact("Michael", "07743773773")
    feelings.add_contact("Harry", "07739973773")
    thoughts = DiaryEntry.new("question", "Why does my doctor hate me?")
    thoughts.add_contact("Dr. Williams", "01644882566")
    monday.add(thoughts)
    monday.add(feelings)
    monday.update_contacts
    homework = TodoList.new
    schoolwork = Todo.new("Mathematics")
    homework.add(schoolwork)
    tuesday = Todo.new("English")
    homework.add(tuesday)
    homework.give_up!
    expect(homework.complete).to eq [schoolwork, tuesday]
    expect(monday.contacts).to eq "John" => "07733773773", "Michael" => "07743773773", "Harry" => "07739973773", "Dr. Williams" => "01644882566"
    expect(monday.find_best_entry_for_reading_time(3, 2)).to eq thoughts
    expect(feelings.reading_chunk(2, 2)).to eq "My dog died today"
    expect(feelings.reading_chunk(3, 1)).to eq "but I met"
  end

  
end


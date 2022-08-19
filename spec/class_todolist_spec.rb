require "../lib/class_todolist.rb"
require "../lib/class_todo.rb"

RSpec.describe TodoList do
  it "adds a new todo to the list" do
    homework = TodoList.new
    monday = Todo.new("Mathematics")
    homework.add(monday)
  end

  class TodoList
  end

  it "marks all items as complete" do
    homework = TodoList.new
    monday = Todo.new("Mathematics")
    homework.add(monday)
    tuesday = Todo.new("English")
    homework.add(tuesday)
    homework.give_up!
    expect(tuesday.done?).to eq true
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
end
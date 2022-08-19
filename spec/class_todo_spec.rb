require "../lib/class_todo.rb"

RSpec.describe Todo do
  it "constructs" do
    task_1 = Todo.new("Walk the dog")  
  end

  class Todo
  end

  it "returns the tasks" do
    task_1 = Todo.new("Walk the dog")
    expect(task_1.task).to eq "Walk the dog"
  end

  it "marks task as complete if finished" do
    task_1 = Todo.new("Walk the dog")
    task_1.mark_done!
    expect(task_1.done?).to eq true
  end

  it "returns false if taks is unfinished" do
    task_1 = Todo.new("Walk the dog")
    expect(task_1.done?).to eq false
  end

  context "nil input for task" do
    it "fails" do
      task_1 = Todo.new("Walk the dog")
      expect { task_2.done? }.to raise_error NameError
    end
  end

end
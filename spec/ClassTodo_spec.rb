require "../lib/ClassTodo.rb"

RSpec.describe Todo do
  it "adds 'walk dog' to new instance of Todo called monday, and view tasks to show 'walk dog' as task 1" do
    monday = Todo.new
    monday.add("walk dog")
    expect(monday.view_tasks).to eq "1, walk dog\n"
  end

  it "adds 'walk dog' and 'walk cat' to new instance of Todo called monday, and view tasks to show 'walk dog' as task 1 and 'walk cat' as task 2" do
    monday = Todo.new
    monday.add("walk dog")
    monday.add("walk cat")
    expect(monday.view_tasks).to eq "1, walk dog\n2, walk cat\n"
  end

  it "deletes 'walk dog' when given 1 as a parameter for complete method" do
    monday = Todo.new
    monday.add("walk dog")
    monday.add("walk cat")
    monday.complete(1)
    expect(monday.view_tasks).to eq "1, walk cat\n"
  end

  it "puts 'No tasks to count' when @tasks is empty and view_tasks is called" do
    monday = Todo.new
    expect(monday.view_tasks).to eq "No tasks to count"
  end
end
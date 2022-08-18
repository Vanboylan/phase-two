=begin
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
=end

class Todo
    def initialize #takes no parameters
    @task is a string
    @tasks is an array
    end

    def add(task)
    task is a string, and is equal to @tasks
    add sends the string to the @tasks array
    end

    def view_tasks #takes no parameters
    returns a string list of tasks numbered and separated by new lines
    returns an error message when no tasks added
    end

    def complete(num)
    num is an integer
    complete removes the element of @tasks at index (num - 1)
    end
end

#examples

#1
monday = Todo.new
monday.add("walk dog")
monday.view_tasks => "1, walk the dog"

#2
monday = Todo.new
monday.add("walk dog")
monday.add("walk cat")
monday.view_tasks => "1, walk the dog\n2, walk cat\n"

#3
monday = Todo.new
monday.add("walk dog")
monday.add("walk cat")
monday.complete(1)
monday.view_tasks => "1, walk cat\n"

#4
monday = Todo.new
monday.view_tasks => "No tasks to count"
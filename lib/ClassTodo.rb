=begin
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
=end

class Todo
  def initialize #intialize variables for the class
    @task
    @tasks = []
  end

  def add(task)
    #task is a string
    @task = task
    @tasks << @task
    #adds string to tasks array
  end

  def view_tasks 
    if @tasks.count == 0
      return "No tasks to count"
    else
      list = ""
      @tasks.each do |element, index|
        list << "#{@tasks.index(element) + 1}, #{element}\n"
      end
      return list
    end
    #takes no parameters and returns a list of tasks added to the array
    #returns no tasks to count if there are none in the array
    #each function lists the tasks in a readable format, numbered
  end

  def complete(num)
  #takes integer as a parameter to delete that task from the list
  index = (num - 1)
  @tasks.delete_at(index)
  #from our view tasks list, our tasks are numbered from 1 but index of tasks array is from 0
  #hence the index being our parameter minus one. We are deleting number X on the list
  #which has the index of X-1 in the array
  end
end
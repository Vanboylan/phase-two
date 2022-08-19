class TodoList
  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    @list << todo
  end

  def incomplete
    incomplete = []
    @list.each {|item|
     incomplete << item if !item.done?}
     return incomplete
  end

  def complete
    complete = []
    @list.each {|item|
     complete << item if item.done?}
     return complete
  end

  def give_up!
    @list.each {|item|
      item.mark_done!}
  end
end

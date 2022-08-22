class TodoList
  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    @list << todo
  end

  def incomplete
    @list.each.select { |item| !item.done?}
  end

  def complete
    @list.each.select { |item| item.done?}
  end

  def give_up!
    @list.each {|item|
      item.mark_done!}
  end
end

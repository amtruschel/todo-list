class Todo < ActiveRecord::Base
  serialize self

  def self.todo_items
    Todo.all.map { |todo| todo.serializable_hash.slice('description', 'completed', 'created_at') }
  end

end

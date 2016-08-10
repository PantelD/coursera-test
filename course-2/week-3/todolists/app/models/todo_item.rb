class TodoItem < ActiveRecord::Base
  def self.how_many_completed
    TodoItem.where(completed: true).count
  end
end

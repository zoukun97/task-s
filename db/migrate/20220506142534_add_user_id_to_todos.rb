class AddUserIdToTodos < ActiveRecord::Migration[6.1]
  def change
    add_reference :todos, :user
  end
end

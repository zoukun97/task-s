class ChangeTodosNameNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :todos, :name, false
  end
end

class AddDoneToTodos < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :completed, :boolean
  end
end

class AddDoneToTodos < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :done, :boolean
  end
end

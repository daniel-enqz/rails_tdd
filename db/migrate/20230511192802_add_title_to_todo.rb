class AddTitleToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :title, :string
  end
end

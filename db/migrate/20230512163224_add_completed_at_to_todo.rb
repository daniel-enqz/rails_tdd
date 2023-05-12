class AddCompletedAtToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :completed_at, :timestamp
  end
end

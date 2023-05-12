class DonesController < ApplicationController
 def create
    @todo = Todo.find(params[:todo_id])
    @todo.touch :completed_at
    redirect_to root_path, notice: "Todo marked as done!"
  end
end

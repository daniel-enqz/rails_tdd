class DonesController < ApplicationController
  def create
    todo.complete!
    redirect_to root_path, notice: "Todo marked as done!"
  end

  def destroy
    todo.incomplete!
    redirect_to root_path, notice: "Todo marked as incomplete!"
  end

  private

  def todo
    current_user.todos.find(params[:todo_id])
  end
end

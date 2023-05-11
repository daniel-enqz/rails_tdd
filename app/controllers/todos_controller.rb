class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice] = "Todo was created successfully."
      redirect_to root_path
    else
      flash[:alert] = "Todo was not created."
      render :new
    end
  end

  private 

  def todo_params
    params.require(:todo).permit(:title)
  end
end

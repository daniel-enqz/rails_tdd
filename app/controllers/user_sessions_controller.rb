class UserSessionsController < ApplicationController
  def new
  end

  def create
    session[:current_email] = params[:user_session][:email]
    redirect_to root_path 
  end
end

class UserSessionsController < ApplicationController
  def new
  end

  def create
    sign_in_as params[:user_session][:email]
    redirect_to root_path 
  end
end

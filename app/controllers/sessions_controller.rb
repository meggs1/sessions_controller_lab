class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:name]
    if username.nil? || username.empty?
      redirect_to login_path
    else
      session[:name] = username
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end

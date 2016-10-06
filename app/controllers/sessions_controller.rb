class SessionsController < ApplicationController

  def new
    # byebug
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to new_session_path
    else
      # binding.pry
      session[:name] = params[:name]
      redirect_to secrets_show_path
    end
  end

  def destroy
    # binding.pry
    if session[:name] != nil
      session[:name] = nil
    end
    redirect_to new_session_path
  end

end

class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to session_path(session[:name])
    end
  end

  def show
    if session[:name]
      @username = session[:name]
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to new_session_path
  end
end

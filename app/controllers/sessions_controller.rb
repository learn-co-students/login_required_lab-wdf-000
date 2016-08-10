class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty? 
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to session_path(session[:name])
    end
  end

  def show
    @name = params[:id]
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end
end
class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to session_path(session[:name])
    else
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session unless session[name: nil]
    redirect_to new_session_path
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    require_login
    session[:name] = params[:name]
  end

  def destroy
    session.clear
  end
end

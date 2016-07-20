class SessionsController < ApplicationController
  def new
  end

  def create
    redirect_to '/' unless params[:name] && params[:name].match(/\S/)
    session[:name] = params[:name]
  end

  def destroy
    session.clear
  end
end

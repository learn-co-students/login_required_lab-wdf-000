class SessionsController < ApplicationController
  def index
    render '/index'
  end
  def new
    redirect_to '/' unless session.include?(:name)
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def create
    redirect_to new_path and return if ( params[:name].nil? || params[:name].empty? )
    session[:name] = params[:name]
    redirect_to root_path
  end
end

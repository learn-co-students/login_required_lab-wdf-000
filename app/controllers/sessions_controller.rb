class SessionsController < ApplicationController
  def new

  end
  def create
    redirect_to login_path unless session.include? :name
    session[:name] = params[:name]
  end
  def destroy
    session.delete :name
    redirect_to login_path
  end
end

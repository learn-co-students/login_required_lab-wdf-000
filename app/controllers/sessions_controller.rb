class SessionsController < ApplicationController
  before_action :require_login, only: [:show, :destroy]
  
  def new
    render 'login'
  end

  def create
    if params[:name].blank?
    redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end
  
  def show
    render 'show'
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end

  private

  def require_login
    redirect_to root_path if session[:name].blank?
  end
end

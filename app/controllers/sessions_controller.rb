class SessionsController < ApplicationController
  
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
end

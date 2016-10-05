class SessionsController < ApplicationController
  def index
    @username = current_user
  end

  def new
  end

  def create
    redirect_to new_session_path unless session.include? :name
    session[:name] = params[:name]
  end

  def destroy
    if session[:name] != nil
      session[:name] = nil
    end
    render :new
  end
end
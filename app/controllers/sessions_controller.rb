class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:new]

  def new
  end

  def destroy
    session.clear
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else session[:name] = params[:name]
    end
  end

end

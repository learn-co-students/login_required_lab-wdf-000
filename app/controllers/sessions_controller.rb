class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new,:destroy]
  def new

  end

  def create
    if params[:name]
      session[:name] = params[:name]
    else
      redirect_to '/new'
    end
  end

  def destroy

    if session[:name]
      session[:name] = nil
    end
  end


  private
  def require_login
  #  return head(:forbidden) unless session.include? :user_id
    if params[:name] != nil && params[:name] != ""
      current_user = params[:name]
    end
   redirect_to '/new' unless current_user
 end

end

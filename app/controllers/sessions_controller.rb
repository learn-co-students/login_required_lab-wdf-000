class SessionsController < ApplicationController
  before_action :ensure_imagination
  skip_before_action :ensure_imagination, only: [:new, :destroy]

  def new
  end

  def create
    session[:name] = params[:name]
    render '/sessions/welcome'
  end

  def destroy
    session[:name] = nil unless session[:name].nil?
    redirect_to '/sessions/new'
  end

  private
    def ensure_imagination
      redirect_to '/sessions/new' unless !params[:name].nil? && !params[:name].empty?
    end

end

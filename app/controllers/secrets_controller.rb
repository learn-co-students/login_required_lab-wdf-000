class SecretsController < ApplicationController
  before_action :require_login

  def show
    # binding.pry
  end

  private
  def require_login
  #  return head(:forbidden) unless session.include? :user_id
   redirect_to '/new' unless current_user

 end

end

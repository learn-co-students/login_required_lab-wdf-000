class SecretsController < ApplicationController
  before_action :require_login

  def show
    if current_user.nil?
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  private
    def require_login
      !!current_user
    end
end
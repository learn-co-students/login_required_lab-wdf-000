class SecretsController < ApplicationController
  before_action :require_login
  # skip_before_action :require_login

  def show
    @secret = current_user
  end

  def require_login
    return redirect_to :new unless session.include? :name    
  end
end

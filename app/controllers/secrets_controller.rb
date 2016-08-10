class SecretsController < ApplicationController
  before_action :require_login

  def show
    @name = session[:name]
  end

end
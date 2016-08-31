require 'pry'
class SecretsController < ApplicationController
  def require_login
	return head(:forbidden) unless session.include? :user_id
  end

  def show
	if !session.present?
	  redirect_to controller: 'sessions', action: 'new'
  	end
  end
end
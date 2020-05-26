class SecretsController < ApplicationController
  before_action :require_login

  def show 
  end

  def require_login
    # return head(:forbidden) unless session.include? :user_id
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end

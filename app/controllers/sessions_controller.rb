class SessionsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :login_required

  def create
    if user = User.find_or_create_from_auth_hash(auth_hash)
      sign_in user
      redirect_to :root
    else
      redirect_to "/auth/failure"
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  def failure
    sign_out
    render layout: false
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end

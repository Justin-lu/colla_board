module UserAuthentication
  def self.included(base)
    base.helper_method :current_user, :signed_in?
  end

  def current_user
    unless session[:user_id].blank?
      @current_user ||= User.find_by id: session[:user_id]
    end
    @current_user
  end

  def signed_in?
    !!current_user
  end

  def login_required
    redirect_to sign_in_path unless signed_in?
  end

  def sign_in user
    session[:user_id] = user.id
  end

  def sign_out
    session[:user_id] = nil
  end

end

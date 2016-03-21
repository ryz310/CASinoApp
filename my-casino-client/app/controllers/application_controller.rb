class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def require_login
    unless request.session['cas'].present? && request.session['cas']['user'].present?
      redirect_to '/', status: :unauthorized
    end
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ZeroDivisionError, with: :show_error

  def current_user
    User.first
  end

  private

  def show_error
    render 'users/index'
  end
end

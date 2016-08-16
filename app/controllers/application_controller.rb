class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @contact = Contact.new

  before_action do
    @current_user = User.find_by id: session[:user_id]
  end
end

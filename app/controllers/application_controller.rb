class ApplicationController < ActionController::Base
  include Authentication

  protect_from_forgery with: :exception
  skip_before_action  :verify_authenticity_token

end

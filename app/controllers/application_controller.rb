class ApplicationController < ActionController::Base
  #except the login page
  before_action :authenticate_person!, except: [:login]
end

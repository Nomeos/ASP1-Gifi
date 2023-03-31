class HomeController < ApplicationController
  before_action :authenticate_person!, except: [:login]
  def index
  end
end

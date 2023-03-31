class ApplicationController < ActionController::Base
  #except the login page
  before_action :authenticate_person!, except: [:login]

  def after_sign_in_path_for(resource)
    if resource.type_person_id == 1
      grades_myGrades_path
    else
      lectures_myLectures_path
    end
  end
end

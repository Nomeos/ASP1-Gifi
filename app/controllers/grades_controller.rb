class GradesController < ApplicationController
  def myGrades
    @myGrades = Grade.where(student_id: current_person.id)
  end
end

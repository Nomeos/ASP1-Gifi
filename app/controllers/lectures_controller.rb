class LecturesController < ApplicationController
  def myLectures
    @myLectures = LecturePromotion.where(person_id: current_person.id)
  end
end

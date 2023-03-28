class LecturesController < ApplicationController
  def myLectures
    @myLectures = LecturePromotion.where(person_id: 54)
  end
end

class LecturesController < ApplicationController

  def index
    @lectures = Lecture.all
  end

  def show
    @lectures = Lecture.find(params[:id])
  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
      redirect_to lectures_path
    else
      render 'index'
    end

  end
  def myLectures
    @myLectures = LecturePromotion.where(person_id: current_person.id)
  end

  def lecture_params
    params.require(:lecture).permit(:name, :description, :category_id)
  end
end

class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def lesson
    @lesson = Lesson.find(params[:id])
  end
end

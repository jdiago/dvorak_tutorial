class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def lesson
    @lesson = Lesson.find(params[:id])
  end

  def check
    @lesson = Lesson.find(params[:id])
    @answer = params[:answer]

    if @lesson.content == @answer
      redirect_to action: 'index'
    else
      redirect_to action: 'lesson', id: @lesson.id
    end
  end
end

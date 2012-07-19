class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def lesson
    @lesson = Lesson.find(params[:id])
  end

  def check
    lesson = Lesson.find(params[:id])

    if lesson.content == params[:answer]
      begin
        nextLesson = Lesson.find(lesson.id + 1)
      rescue ActiveRecord::RecordNotFound
        redirect_to action: 'index'
      else
        redirect_to action: 'lesson', id: nextLesson.id
      end
    else
      redirect_to action: 'lesson', id: lesson.id
    end
  end
end

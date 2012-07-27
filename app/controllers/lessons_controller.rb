class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(params[:lesson])

    if @lesson.save
      redirect_to @lesson, notice: "Lesson #{@lesson.name} was successfully created."
    else
      rander action: "new"
    end
  end

  def check
    lesson = Lesson.find(params[:lesson_id])

    if lesson.content == params[:answer]
      begin
        nextLesson = Lesson.find(lesson.id + 1)
      rescue ActiveRecord::RecordNotFound
        redirect_to lessons_path
      else
        redirect_to nextLesson
      end
    else
      redirect_to lesson
    end
  end
end

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

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])

    if @lesson.update_attributes(params[:lesson])
      redirect_to @lesson, notice: "Lesson #{@lesson.name} was successfully updated."
    else
      render action: "edit"
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    redirect_to lessons_path
  end

  def check
    lesson = Lesson.find(params[:lesson_id])

    if lesson.content == params[:answer]
      if nextLesson = Lesson.find_by_sequence(lesson.sequence + 1)
        redirect_to nextLesson
      else
        redirect_to lessons_path
      end
    else
      redirect_to lesson
    end
  end
end

class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def lesson
    
  end
end

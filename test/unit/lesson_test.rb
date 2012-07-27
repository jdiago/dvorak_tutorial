require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  test "lesson attributes must not be empty" do
    lesson = Lesson.new
    assert lesson.invalid?
    assert lesson.errors[:name].any?
    assert lesson.errors[:content].any?
  end
end

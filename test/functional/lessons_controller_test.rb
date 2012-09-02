require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  setup do
    @lesson = lessons(:one)

    @input = {
      name: 'Lesson Test',
      content: 'asdf;lkj',
      sequence: 3
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lessons)
  end

  test "should show lesson" do
    get :show, id: @lesson
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post :create, lesson: @input
    end

    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should get edit" do
    get :edit, id: @lesson
    assert_response :success
  end

  test "should update lesson" do
    put :update, id: @lesson, lesson: @input
    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete :destroy, id: @lesson
    end

    assert_redirected_to lessons_path
  end

  test "check wrong answer" do
    post :check, lesson_id: @lesson, answer: 'wrong'
    assert_redirected_to @lesson
  end

  # test "right answer goes to next lesson" do
  #   post :check, lesson_id: @lesson, answer: 'uuuu hhhh'
  #   assert_redirected_to @lesson
  # end
end

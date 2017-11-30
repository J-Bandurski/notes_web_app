require 'test_helper'

class TopicsControllerTest < ActionController::TestCase
  setup do
    @topic = topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
<<<<<<< HEAD
      post :create, topic: { body: @topic.body, title: @topic.title }
=======
      post :create, topic: { title: @topic.title, url: @topic.url }
>>>>>>> a5d0d164b69b74a6b48327d5fc3f099d774a13e3
    end

    assert_redirected_to topic_path(assigns(:topic))
  end

  test "should show topic" do
    get :show, id: @topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic
    assert_response :success
  end

  test "should update topic" do
<<<<<<< HEAD
    patch :update, id: @topic, topic: { body: @topic.body, title: @topic.title }
=======
    patch :update, id: @topic, topic: { title: @topic.title, url: @topic.url }
>>>>>>> a5d0d164b69b74a6b48327d5fc3f099d774a13e3
    assert_redirected_to topic_path(assigns(:topic))
  end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete :destroy, id: @topic
    end

    assert_redirected_to topics_path
  end
end

require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = topics(:one)
  end

  test "should get index" do
    get topics_url
    assert_response :success
  end

  test "should get new" do
    get new_topic_url
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post topics_url, params: { topic: { content: @topic.content, demonstrator: @topic.demonstrator, description: @topic.description, duration: @topic.duration, image_url: @topic.image_url, package_price: @topic.package_price, queries_email: @topic.queries_email, topics_title: "New Topic" } }
    end

    assert_redirected_to topic_url(Topic.last)
  end

  test "should show topic" do
    get topic_url(@topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_url(@topic)
    assert_response :success
  end

  test "should update topic" do
    patch topic_url(@topic), params: { topic: { content: @topic.content, demonstrator: @topic.demonstrator, description: @topic.description, duration: @topic.duration, image_url: @topic.image_url, package_price: @topic.package_price, queries_email: @topic.queries_email, topics_title: @topic.topics_title } }
    assert_redirected_to topic_url(@topic)
  end

test "can't delete topics in course" do
  assert_difference('Topics.count', 0) do
    delete topic_url(topics(:two))
  end

  assert_redirected_to topic_url
end

  test "should destroy topic" do
    assert_difference('Topic.count', -1) do
      delete topic_url(@topic)
    end

    assert_redirected_to topics_url
  end
end

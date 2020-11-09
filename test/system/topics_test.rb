require "application_system_test_case"

class TopicsTest < ApplicationSystemTestCase
  setup do
    @topic = topics(:one)
  end

  test "visiting the index" do
    visit topics_url
    assert_selector "h1", text: "Topics"
  end

  test "creating a Topic" do
    visit topics_url
    click_on "New Topic"

    fill_in "Content", with: @topic.content
    fill_in "Demonstrator", with: @topic.demonstrator
    fill_in "Description", with: @topic.description
    fill_in "Duration", with: @topic.duration
    fill_in "Image url", with: @topic.image_url
    fill_in "Package price", with: @topic.package_price
    fill_in "Queries email", with: @topic.queries_email
    fill_in "Topics title", with: @topic.topics_title
    click_on "Create Topic"

    assert_text "Topic was successfully created"
    click_on "Back"
  end

  test "updating a Topic" do
    visit topics_url
    click_on "Edit", match: :first

    fill_in "Content", with: @topic.content
    fill_in "Demonstrator", with: @topic.demonstrator
    fill_in "Description", with: @topic.description
    fill_in "Duration", with: @topic.duration
    fill_in "Image url", with: @topic.image_url
    fill_in "Package price", with: @topic.package_price
    fill_in "Queries email", with: @topic.queries_email
    fill_in "Topics title", with: @topic.topics_title
    click_on "Update Topic"

    assert_text "Topic was successfully updated"
    click_on "Back"
  end

  test "destroying a Topic" do
    visit topics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topic was successfully destroyed"
  end
end

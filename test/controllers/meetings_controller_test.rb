require 'test_helper'

class MeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting = meetings(:one)
  end

  test "should get index" do
    get meetings_url, as: :json
    assert_response :success
  end

  test "should create meeting" do
    assert_difference('Meeting.count') do
      post meetings_url, params: { meeting: { action_items: @meeting.action_items, notes: @meeting.notes, subject: @meeting.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show meeting" do
    get meeting_url(@meeting), as: :json
    assert_response :success
  end

  test "should update meeting" do
    patch meeting_url(@meeting), params: { meeting: { action_items: @meeting.action_items, notes: @meeting.notes, subject: @meeting.subject } }, as: :json
    assert_response 200
  end

  test "should destroy meeting" do
    assert_difference('Meeting.count', -1) do
      delete meeting_url(@meeting), as: :json
    end

    assert_response 204
  end
end

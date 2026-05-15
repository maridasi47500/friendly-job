require "test_helper"

class JobofferhastagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobofferhastag = jobofferhastags(:one)
  end

  test "should get index" do
    get jobofferhastags_url
    assert_response :success
  end

  test "should get new" do
    get new_jobofferhastag_url
    assert_response :success
  end

  test "should create jobofferhastag" do
    assert_difference("Jobofferhastag.count") do
      post jobofferhastags_url, params: { jobofferhastag: { joboffer_id: @jobofferhastag.joboffer_id, tag_id: @jobofferhastag.tag_id, user_id: @jobofferhastag.user_id } }
    end

    assert_redirected_to jobofferhastag_url(Jobofferhastag.last)
  end

  test "should show jobofferhastag" do
    get jobofferhastag_url(@jobofferhastag)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobofferhastag_url(@jobofferhastag)
    assert_response :success
  end

  test "should update jobofferhastag" do
    patch jobofferhastag_url(@jobofferhastag), params: { jobofferhastag: { joboffer_id: @jobofferhastag.joboffer_id, tag_id: @jobofferhastag.tag_id, user_id: @jobofferhastag.user_id } }
    assert_redirected_to jobofferhastag_url(@jobofferhastag)
  end

  test "should destroy jobofferhastag" do
    assert_difference("Jobofferhastag.count", -1) do
      delete jobofferhastag_url(@jobofferhastag)
    end

    assert_redirected_to jobofferhastags_url
  end
end

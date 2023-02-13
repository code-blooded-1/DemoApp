require "test_helper"

class PanDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pan_detail = pan_details(:one)
  end

  test "should get index" do
    get pan_details_url
    assert_response :success
  end

  test "should get new" do
    get new_pan_detail_url
    assert_response :success
  end

  test "should create pan_detail" do
    assert_difference("PanDetail.count") do
      post pan_details_url, params: { pan_detail: { number: @pan_detail.number } }
    end

    assert_redirected_to pan_detail_url(PanDetail.last)
  end

  test "should show pan_detail" do
    get pan_detail_url(@pan_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_pan_detail_url(@pan_detail)
    assert_response :success
  end

  test "should update pan_detail" do
    patch pan_detail_url(@pan_detail), params: { pan_detail: { number: @pan_detail.number } }
    assert_redirected_to pan_detail_url(@pan_detail)
  end

  test "should destroy pan_detail" do
    assert_difference("PanDetail.count", -1) do
      delete pan_detail_url(@pan_detail)
    end

    assert_redirected_to pan_details_url
  end
end

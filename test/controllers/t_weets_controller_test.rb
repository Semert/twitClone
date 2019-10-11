require 'test_helper'

class TWeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_weet = t_weets(:one)
  end

  test "should get index" do
    get t_weets_url
    assert_response :success
  end

  test "should get new" do
    get new_t_weet_url
    assert_response :success
  end

  test "should create t_weet" do
    assert_difference('TWeet.count') do
      post t_weets_url, params: { t_weet: { Tweet: @t_weet.Tweet } }
    end

    assert_redirected_to t_weet_url(TWeet.last)
  end

  test "should show t_weet" do
    get t_weet_url(@t_weet)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_weet_url(@t_weet)
    assert_response :success
  end

  test "should update t_weet" do
    patch t_weet_url(@t_weet), params: { t_weet: { Tweet: @t_weet.Tweet } }
    assert_redirected_to t_weet_url(@t_weet)
  end

  test "should destroy t_weet" do
    assert_difference('TWeet.count', -1) do
      delete t_weet_url(@t_weet)
    end

    assert_redirected_to t_weets_url
  end
end

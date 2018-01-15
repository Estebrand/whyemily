require 'test_helper'

class EmiliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emily = emilies(:one)
  end

  test "should get index" do
    get emilies_url
    assert_response :success
  end

  test "should get new" do
    get new_emily_url
    assert_response :success
  end

  test "should create emily" do
    assert_difference('Emily.count') do
      post emilies_url, params: { emily: { dsc: @emily.dsc, name: @emily.name } }
    end

    assert_redirected_to emily_url(Emily.last)
  end

  test "should show emily" do
    get emily_url(@emily)
    assert_response :success
  end

  test "should get edit" do
    get edit_emily_url(@emily)
    assert_response :success
  end

  test "should update emily" do
    patch emily_url(@emily), params: { emily: { dsc: @emily.dsc, name: @emily.name } }
    assert_redirected_to emily_url(@emily)
  end

  test "should destroy emily" do
    assert_difference('Emily.count', -1) do
      delete emily_url(@emily)
    end

    assert_redirected_to emilies_url
  end
end

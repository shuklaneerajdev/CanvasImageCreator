require 'test_helper'

class ImagequotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imagequote = imagequotes(:one)
  end

  test "should get index" do
    get imagequotes_url
    assert_response :success
  end

  test "should get new" do
    get new_imagequote_url
    assert_response :success
  end

  test "should create imagequote" do
    assert_difference('Imagequote.count') do
      post imagequotes_url, params: { imagequote: { name: @imagequote.name, value: @imagequote.value } }
    end

    assert_redirected_to imagequote_url(Imagequote.last)
  end

  test "should show imagequote" do
    get imagequote_url(@imagequote)
    assert_response :success
  end

  test "should get edit" do
    get edit_imagequote_url(@imagequote)
    assert_response :success
  end

  test "should update imagequote" do
    patch imagequote_url(@imagequote), params: { imagequote: { name: @imagequote.name, value: @imagequote.value } }
    assert_redirected_to imagequote_url(@imagequote)
  end

  test "should destroy imagequote" do
    assert_difference('Imagequote.count', -1) do
      delete imagequote_url(@imagequote)
    end

    assert_redirected_to imagequotes_url
  end
end

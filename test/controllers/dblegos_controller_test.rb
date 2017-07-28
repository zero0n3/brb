require 'test_helper'

class DblegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dblego = dblegos(:one)
  end

  test "should get index" do
    get dblegos_url
    assert_response :success
  end

  test "should get new" do
    get new_dblego_url
    assert_response :success
  end

  test "should create dblego" do
    assert_difference('Dblego.count') do
      post dblegos_url, params: { dblego: { color: @dblego.color, part: @dblego.part, quantity: @dblego.quantity } }
    end

    assert_redirected_to dblego_url(Dblego.last)
  end

  test "should show dblego" do
    get dblego_url(@dblego)
    assert_response :success
  end

  test "should get edit" do
    get edit_dblego_url(@dblego)
    assert_response :success
  end

  test "should update dblego" do
    patch dblego_url(@dblego), params: { dblego: { color: @dblego.color, part: @dblego.part, quantity: @dblego.quantity } }
    assert_redirected_to dblego_url(@dblego)
  end

  test "should destroy dblego" do
    assert_difference('Dblego.count', -1) do
      delete dblego_url(@dblego)
    end

    assert_redirected_to dblegos_url
  end
end

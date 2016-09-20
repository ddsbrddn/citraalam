require 'test_helper'

class LakesidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lakeside = lakesides(:one)
  end

  test "should get index" do
    get lakesides_url
    assert_response :success
  end

  test "should get new" do
    get new_lakeside_url
    assert_response :success
  end

  test "should create lakeside" do
    assert_difference('Lakeside.count') do
      post lakesides_url, params: { lakeside: { end_time: @lakeside.end_time, organization: @lakeside.organization, packet: @lakeside.packet, start_time: @lakeside.start_time, status: @lakeside.status } }
    end

    assert_redirected_to lakeside_url(Lakeside.last)
  end

  test "should show lakeside" do
    get lakeside_url(@lakeside)
    assert_response :success
  end

  test "should get edit" do
    get edit_lakeside_url(@lakeside)
    assert_response :success
  end

  test "should update lakeside" do
    patch lakeside_url(@lakeside), params: { lakeside: { end_time: @lakeside.end_time, organization: @lakeside.organization, packet: @lakeside.packet, start_time: @lakeside.start_time, status: @lakeside.status } }
    assert_redirected_to lakeside_url(@lakeside)
  end

  test "should destroy lakeside" do
    assert_difference('Lakeside.count', -1) do
      delete lakeside_url(@lakeside)
    end

    assert_redirected_to lakesides_url
  end
end

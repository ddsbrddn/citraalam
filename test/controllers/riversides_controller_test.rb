require 'test_helper'

class RiversidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @riverside = riversides(:one)
  end

  test "should get index" do
    get riversides_url
    assert_response :success
  end

  test "should get new" do
    get new_riverside_url
    assert_response :success
  end

  test "should create riverside" do
    assert_difference('Riverside.count') do
      post riversides_url, params: { riverside: { end_time: @riverside.end_time, packet: @riverside.packet, start_time: @riverside.start_time, status: @riverside.status, unit: @riverside.unit } }
    end

    assert_redirected_to riverside_url(Riverside.last)
  end

  test "should show riverside" do
    get riverside_url(@riverside)
    assert_response :success
  end

  test "should get edit" do
    get edit_riverside_url(@riverside)
    assert_response :success
  end

  test "should update riverside" do
    patch riverside_url(@riverside), params: { riverside: { end_time: @riverside.end_time, packet: @riverside.packet, start_time: @riverside.start_time, status: @riverside.status, unit: @riverside.unit } }
    assert_redirected_to riverside_url(@riverside)
  end

  test "should destroy riverside" do
    assert_difference('Riverside.count', -1) do
      delete riverside_url(@riverside)
    end

    assert_redirected_to riversides_url
  end
end

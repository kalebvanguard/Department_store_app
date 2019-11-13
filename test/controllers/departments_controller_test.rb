require 'test_helper'

class DepartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departments_index_url
    assert_response :success
  end

  test "should get show" do
    get departments_show_url
    assert_response :success
  end

  test "should get new" do
    get departments_new_url
    assert_response :success
  end

  test "should get edit" do
    get departments_edit_url
    assert_response :success
  end

  test "should get skip-routes" do
    get departments_skip-routes_url
    assert_response :success
  end

end

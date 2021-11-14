require 'test_helper'

class QrcodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qrcodes_index_url
    assert_response :success
  end

  test "should get show" do
    get qrcodes_show_url
    assert_response :success
  end

  test "should get new" do
    get qrcodes_new_url
    assert_response :success
  end

  test "should get create" do
    get qrcodes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get qrcodes_destroy_url
    assert_response :success
  end

end

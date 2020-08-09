require 'test_helper'

class Admin::SchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_schools_index_url
    assert_response :success
  end

end

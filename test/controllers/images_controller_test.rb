require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should get root_path ' do
    get root_path
    assert_response :success
  end

  test 'should get index_image' do
    get indeximage_path
    assert_response :success
  end

  test ' dont should new_image if user not login' do
    get newimage_path
    assert_redirected_to new_user_session_path
  end

  test 'shoud login views' do
    get new_user_session_path
    assert_response :success
  end

  test 'should registration views' do
    get new_user_registration_path
    assert_response :success
  end
end

require 'test_helper'

class InternshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internship = internships(:one)
  end

  test "should get index" do
    get internships_url
    assert_response :success
  end

  test "should get new" do
    get new_internship_url
    assert_response :success
  end

  test "should create internship" do
    assert_difference('Internship.count') do
      post internships_url, params: { internship: { college: @internship.college, cv: @internship.cv, email: @internship.email, first_name: @internship.first_name, gender: @internship.gender, graduation_year: @internship.graduation_year, last_name: @internship.last_name, phone: @internship.phone } }
    end

    assert_redirected_to internship_url(Internship.last)
  end

  test "should show internship" do
    get internship_url(@internship)
    assert_response :success
  end

  test "should get edit" do
    get edit_internship_url(@internship)
    assert_response :success
  end

  test "should update internship" do
    patch internship_url(@internship), params: { internship: { college: @internship.college, cv: @internship.cv, email: @internship.email, first_name: @internship.first_name, gender: @internship.gender, graduation_year: @internship.graduation_year, last_name: @internship.last_name, phone: @internship.phone } }
    assert_redirected_to internship_url(@internship)
  end

  test "should destroy internship" do
    assert_difference('Internship.count', -1) do
      delete internship_url(@internship)
    end

    assert_redirected_to internships_url
  end
end

require "application_system_test_case"

class InternshipsTest < ApplicationSystemTestCase
  setup do
    @internship = internships(:one)
  end

  test "visiting the index" do
    visit internships_url
    assert_selector "h1", text: "Internships"
  end

  test "creating a Internship" do
    visit internships_url
    click_on "New Internship"

    fill_in "College", with: @internship.college
    fill_in "Cv", with: @internship.cv
    fill_in "Email", with: @internship.email
    fill_in "First name", with: @internship.first_name
    fill_in "Gender", with: @internship.gender
    fill_in "Graduation year", with: @internship.graduation_year
    fill_in "Last name", with: @internship.last_name
    fill_in "Phone", with: @internship.phone
    click_on "Create Internship"

    assert_text "Internship was successfully created"
    click_on "Back"
  end

  test "updating a Internship" do
    visit internships_url
    click_on "Edit", match: :first

    fill_in "College", with: @internship.college
    fill_in "Cv", with: @internship.cv
    fill_in "Email", with: @internship.email
    fill_in "First name", with: @internship.first_name
    fill_in "Gender", with: @internship.gender
    fill_in "Graduation year", with: @internship.graduation_year
    fill_in "Last name", with: @internship.last_name
    fill_in "Phone", with: @internship.phone
    click_on "Update Internship"

    assert_text "Internship was successfully updated"
    click_on "Back"
  end

  test "destroying a Internship" do
    visit internships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Internship was successfully destroyed"
  end
end

require "application_system_test_case"

class ResumesTest < ApplicationSystemTestCase
  setup do
    @resume = resumes(:one)
  end

  test "visiting the index" do
    visit resumes_url
    assert_selector "h1", text: "Resumes"
  end

  test "should create resume" do
    visit resumes_url
    click_on "New resume"

    fill_in "Address", with: @resume.address
    fill_in "Cirtificates", with: @resume.cirtificates
    fill_in "Educational qualifications", with: @resume.educational_qualifications
    fill_in "Email", with: @resume.email
    fill_in "Experience", with: @resume.experience
    fill_in "First name", with: @resume.first_name
    fill_in "Github", with: @resume.github
    fill_in "Last name", with: @resume.last_name
    fill_in "Linkedin", with: @resume.linkedin
    fill_in "Phone", with: @resume.phone
    fill_in "Projects", with: @resume.projects
    fill_in "Skills", with: @resume.skills
    click_on "Create Resume"

    assert_text "Resume was successfully created"
    click_on "Back"
  end

  test "should update Resume" do
    visit resume_url(@resume)
    click_on "Edit this resume", match: :first

    fill_in "Address", with: @resume.address
    fill_in "Cirtificates", with: @resume.cirtificates
    fill_in "Educational qualifications", with: @resume.educational_qualifications
    fill_in "Email", with: @resume.email
    fill_in "Experience", with: @resume.experience
    fill_in "First name", with: @resume.first_name
    fill_in "Github", with: @resume.github
    fill_in "Last name", with: @resume.last_name
    fill_in "Linkedin", with: @resume.linkedin
    fill_in "Phone", with: @resume.phone
    fill_in "Projects", with: @resume.projects
    fill_in "Skills", with: @resume.skills
    click_on "Update Resume"

    assert_text "Resume was successfully updated"
    click_on "Back"
  end

  test "should destroy Resume" do
    visit resume_url(@resume)
    click_on "Destroy this resume", match: :first

    assert_text "Resume was successfully destroyed"
  end
end

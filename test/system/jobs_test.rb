require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "should create job" do
    visit jobs_url
    click_on "New job"

    fill_in "Application deadline", with: @job.application_deadline
    fill_in "Apply link", with: @job.apply_link
    fill_in "Company culture", with: @job.company_culture
    fill_in "Company info", with: @job.company_info
    fill_in "Contract length", with: @job.contract_length
    fill_in "Diversity statement", with: @job.diversity_statement
    fill_in "Education", with: @job.education
    fill_in "Experience", with: @job.experience
    fill_in "Job category", with: @job.job_category
    fill_in "Job type", with: @job.job_type
    fill_in "Location", with: @job.location
    fill_in "Perks and benefits", with: @job.perks_and_benefits
    fill_in "Probation period", with: @job.probation_period
    fill_in "Reporting structure", with: @job.reporting_structure
    fill_in "Required languages", with: @job.required_languages
    fill_in "Responsibilities", with: @job.responsibilities
    fill_in "Salary", with: @job.salary
    fill_in "Skills", with: @job.skills
    fill_in "Social link", with: @job.social_link
    fill_in "Summary", with: @job.summary
    fill_in "Title", with: @job.title
    fill_in "Working conditions", with: @job.working_conditions
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "should update Job" do
    visit job_url(@job)
    click_on "Edit this job", match: :first

    fill_in "Application deadline", with: @job.application_deadline
    fill_in "Apply link", with: @job.apply_link
    fill_in "Company culture", with: @job.company_culture
    fill_in "Company info", with: @job.company_info
    fill_in "Contract length", with: @job.contract_length
    fill_in "Diversity statement", with: @job.diversity_statement
    fill_in "Education", with: @job.education
    fill_in "Experience", with: @job.experience
    fill_in "Job category", with: @job.job_category
    fill_in "Job type", with: @job.job_type
    fill_in "Location", with: @job.location
    fill_in "Perks and benefits", with: @job.perks_and_benefits
    fill_in "Probation period", with: @job.probation_period
    fill_in "Reporting structure", with: @job.reporting_structure
    fill_in "Required languages", with: @job.required_languages
    fill_in "Responsibilities", with: @job.responsibilities
    fill_in "Salary", with: @job.salary
    fill_in "Skills", with: @job.skills
    fill_in "Social link", with: @job.social_link
    fill_in "Summary", with: @job.summary
    fill_in "Title", with: @job.title
    fill_in "Working conditions", with: @job.working_conditions
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "should destroy Job" do
    visit job_url(@job)
    click_on "Destroy this job", match: :first

    assert_text "Job was successfully destroyed"
  end
end

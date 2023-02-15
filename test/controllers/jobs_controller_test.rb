require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference("Job.count") do
      post jobs_url, params: { job: { application_deadline: @job.application_deadline, apply_link: @job.apply_link, company_culture: @job.company_culture, company_info: @job.company_info, contract_length: @job.contract_length, diversity_statement: @job.diversity_statement, education: @job.education, experience: @job.experience, job_category: @job.job_category, job_type: @job.job_type, location: @job.location, perks_and_benefits: @job.perks_and_benefits, probation_period: @job.probation_period, reporting_structure: @job.reporting_structure, required_languages: @job.required_languages, responsibilities: @job.responsibilities, salary: @job.salary, skills: @job.skills, social_link: @job.social_link, summary: @job.summary, title: @job.title, working_conditions: @job.working_conditions } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { application_deadline: @job.application_deadline, apply_link: @job.apply_link, company_culture: @job.company_culture, company_info: @job.company_info, contract_length: @job.contract_length, diversity_statement: @job.diversity_statement, education: @job.education, experience: @job.experience, job_category: @job.job_category, job_type: @job.job_type, location: @job.location, perks_and_benefits: @job.perks_and_benefits, probation_period: @job.probation_period, reporting_structure: @job.reporting_structure, required_languages: @job.required_languages, responsibilities: @job.responsibilities, salary: @job.salary, skills: @job.skills, social_link: @job.social_link, summary: @job.summary, title: @job.title, working_conditions: @job.working_conditions } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference("Job.count", -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end

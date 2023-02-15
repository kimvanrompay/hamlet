class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :summary
      t.text :responsibilities
      t.text :skills
      t.text :education
      t.integer :experience
      t.integer :salary
      t.text :reporting_structure
      t.text :working_conditions
      t.text :company_info
      t.string :apply_link
      t.string :social_link
      t.string :location
      t.string :job_type
      t.string :job_category
      t.datetime :application_deadline
      t.text :diversity_statement
      t.text :company_culture
      t.string :required_languages
      t.string :contract_length
      t.string :probation_period
      t.text :perks_and_benefits

      t.timestamps
    end
  end
end

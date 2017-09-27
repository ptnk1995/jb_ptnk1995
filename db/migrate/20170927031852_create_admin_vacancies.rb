class CreateAdminVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :job_title
      t.text :job_summary
      t.string :job_type
      t.float :min_sal
      t.float :max_sal
      t.string :deal_line
      t.text :expected_skills
      t.string :locations

      t.timestamps
    end
  end
end

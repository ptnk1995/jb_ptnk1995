class CreateJobSeekers < ActiveRecord::Migration
  def change
    create_table :job_seekers do |t|
      t.references :user, foreign_key: true
      t.string :skills
      t.float :expected_sal
      t.string :expected_locations

      t.timestamps
    end
  end
end

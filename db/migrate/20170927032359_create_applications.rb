class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :job_seeker, index: true, foreign_key: true
      t.references :vacancy, index: true, foreign_key: true

      t.timestamps
    end
  end
end

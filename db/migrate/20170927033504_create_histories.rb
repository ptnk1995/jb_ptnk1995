class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :history_type
      t.text :title
      t.timestamps :start_time
      t.timestamps :end_time
      t.references :job_seeker, index: true, foreign_key: true

      t.timestamp
    end
  end
end

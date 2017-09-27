class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :job_seeker, index: true, foreign_key: true
      t.references :vacancy, index: true, foreign_key: true
      t.float :ratio

      t.timestamps
    end
  end
end

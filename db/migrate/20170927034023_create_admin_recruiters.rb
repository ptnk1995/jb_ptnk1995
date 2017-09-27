class CreateAdminRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.integer :contract_id
      t.string :password
      t.string :email
      t.string :phone
      t.references :company, index: true, foreign_key: true

      t.timestamps
    end
  end
end

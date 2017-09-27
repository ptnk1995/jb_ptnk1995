class CreateAdminCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :website
      t.text :address
      t.string :country
      t.integer :bussiness_type

      t.timestamps
    end
  end
end

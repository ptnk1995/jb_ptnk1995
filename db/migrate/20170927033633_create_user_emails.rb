class CreateUserEmails < ActiveRecord::Migration
  def change
    create_table :user_emails do |t|
      t.references :user, index: true, foreign_key: true
      t.string :email
      t.boolean :is_default

      t.timestamps
    end
  end
end

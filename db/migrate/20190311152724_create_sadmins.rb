class CreateSadmins < ActiveRecord::Migration
  def change
    create_table :sadmins do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :organization
      t.int :phone_number

      t.timestamps null: false
    end
  end
end

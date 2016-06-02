class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :address
      t.integer :phone_number
      t.text :email
      t.timestamps null: false
    end
  end
end

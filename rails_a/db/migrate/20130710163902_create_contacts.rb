class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, null: false, limit: 200.bytes
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end

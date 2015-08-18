class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :last_name
      t.string :first_name
      t.string :phone
      t.string :emergency_name
      t.string :emergency_phone

      t.timestamps null: false
    end
  end
end

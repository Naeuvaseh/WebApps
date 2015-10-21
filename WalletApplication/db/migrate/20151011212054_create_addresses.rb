class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :FamilyID
      t.string :AddressLine1
      t.string :AddressLine2
      t.string :City
      t.string :State
      t.string :ZIP
      t.string :County

      t.timestamps null: false
    end
  end
end

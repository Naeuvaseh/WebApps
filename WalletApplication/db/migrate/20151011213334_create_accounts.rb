class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :Name
      t.integer :String
      t.references :User, index: true, foreign_key: true
      t.references :Category, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end

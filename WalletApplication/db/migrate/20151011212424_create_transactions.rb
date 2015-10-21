class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :Date
      t.decimal :Amount
      t.string :Details
      t.references :Category, index: true, foreign_key: true
      t.references :Account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

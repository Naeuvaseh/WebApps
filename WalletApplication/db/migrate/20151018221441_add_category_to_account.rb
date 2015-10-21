class AddCategoryToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :Category, :string
  end
end

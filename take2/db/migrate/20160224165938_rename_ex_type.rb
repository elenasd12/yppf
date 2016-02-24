class RenameExType < ActiveRecord::Migration
  def change
    rename_column :expenses, :expense_type, :expensetype
  end
end

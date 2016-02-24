class RenameType < ActiveRecord::Migration
  def change
    rename_column :incomes, :type, :income_type
    rename_column :expenses, :type, :expense_type
  end
end

class RenameExpenseType < ActiveRecord::Migration
  def change
    rename_column :expenses, :type, :expensetype
  end
end

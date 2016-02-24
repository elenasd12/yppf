class RenameIncomeType < ActiveRecord::Migration
  def change
    rename_column :incomes, :income_type, :incometype
  end
end

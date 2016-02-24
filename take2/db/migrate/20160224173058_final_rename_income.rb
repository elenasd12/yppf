class FinalRenameIncome < ActiveRecord::Migration
  def change
    rename_column :incomes, :incometype, :incometype
  end
end

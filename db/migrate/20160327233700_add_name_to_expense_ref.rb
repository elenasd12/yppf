class AddNameToExpenseRef < ActiveRecord::Migration
  def change
    change_table(:expense_references) do |t|
      t.string :ref_name
    end
  end
end

class AddMoreColumns < ActiveRecord::Migration
 def change
    add_reference :bills, :expense_category, foreign_key: true
    add_reference :expenses, :expense_reference, foreign_key: true
    change_table(:bills) do |t|
      t.integer :bill_status
    end
    change_table(:expense_categories) do |t|
      t.integer :exp_type
    end
     
  end
end

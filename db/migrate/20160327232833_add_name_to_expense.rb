class AddNameToExpense < ActiveRecord::Migration
  def change
     change_table(:expenses) do |t|
      t.string :expensename
    end
    change_table(:bills) do |t|
      t.string :bill_name
    end
    change_table(:expense_details) do |t|
      t.text :expdet_description
      t.rename :expdate_value, :expdet_value
    end
  end
end

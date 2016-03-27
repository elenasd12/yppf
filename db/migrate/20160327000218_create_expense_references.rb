class CreateExpenseReferences < ActiveRecord::Migration
  def change
    create_table :expense_references do |t|
      t.decimal :ref_value
      t.integer :ref_status
      t.integer :ref_type
      t.integer :ref_month
      t.integer :ref_year

      t.timestamps null: false
    end
    add_reference :expense_references, :user, foreign_key: true
    add_reference :expense_references, :expense_category, foreign_key: true
  end
end

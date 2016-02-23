class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.text :expenseid
      t.text :userid
      t.text :type
      t.text :frequency
      t.decimal :projvalue
      t.decimal :actvalue
      t.integer :percent
      t.integer :month
      t.integer :year

      t.timestamps null: false
    end
  end
end

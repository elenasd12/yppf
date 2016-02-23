class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.text :userid
      t.text :income
      t.text :type
      t.decimal :value
      t.text :frequency
      t.integer :day_rec
      t.integer :month
      t.integer :year

      t.timestamps null: false
    end
  end
end

class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.text :userid
      t.text :expenseid
      t.integer :day_month
      t.integer :month
      t.integer :year

      t.timestamps null: false
    end
  end
end

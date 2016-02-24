class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :user
      t.text :email
      t.text :password
      t.text :state

      t.timestamps null: false
    end
  end
end

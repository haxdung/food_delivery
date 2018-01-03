class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :user_id, foreign_key: true
      t.integer :total_money
      t.references :food, foreign_key:true
      t.integer :quantity

      t.timestamps
    end
  end
end

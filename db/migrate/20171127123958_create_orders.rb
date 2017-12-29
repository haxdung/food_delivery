class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :employee_id
      t.string :address
      t.float :total_money
      t.integer :status

      t.timestamps
    end
    add_index :orders, :customer_id
    add_index :orders, :employee_id
    add_index :orders, [:customer_id, :employee_id]
  end
end

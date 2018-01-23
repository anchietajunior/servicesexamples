class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end

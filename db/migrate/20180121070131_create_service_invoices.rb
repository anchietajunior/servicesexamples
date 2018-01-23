class CreateServiceInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :service_invoices do |t|
      t.references :payment, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

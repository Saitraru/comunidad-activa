class CreatePaymentMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_methods do |t|
      t.string :medio_pago

      t.timestamps
    end
  end
end

class CreatePhoneSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :phone_suppliers do |t|
      t.string :telefono
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end

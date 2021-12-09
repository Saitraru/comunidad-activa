class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :rut
      t.string :proveedor
      t.string :correo
      t.references :supplier_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

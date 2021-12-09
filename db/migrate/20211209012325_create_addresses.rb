class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :nombre_calle
      t.string :numero_calle
      t.string :departamento

      t.timestamps
    end
  end
end

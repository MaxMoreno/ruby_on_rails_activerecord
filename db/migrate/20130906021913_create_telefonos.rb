class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.string :tipo
      t.text :telefono

      t.belongs_to :direccion

      t.timestamps
    end
  end
end

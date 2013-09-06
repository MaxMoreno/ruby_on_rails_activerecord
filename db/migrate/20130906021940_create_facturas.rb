class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :referencia
      t.text :monto

      t.belongs_to :usuario
      
      t.timestamps
    end
  end
end

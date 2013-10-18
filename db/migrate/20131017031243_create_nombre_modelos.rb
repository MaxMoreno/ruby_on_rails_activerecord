class CreateNombreModelos < ActiveRecord::Migration
  def change
    create_table :nombre_modelos do |t|
      t.string :atributo1
      t.string :atributo2

      t.timestamps
    end
  end
end

class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :email
      t.string :identificador
      t.string :sexo
      t.string :telefono

      t.timestamps
    end
  end
end

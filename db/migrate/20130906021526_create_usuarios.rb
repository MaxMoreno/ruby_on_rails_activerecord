class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.date :nacimiento
      t.string :sexo
	  
	  # t.has_many :direccions
	  # t.has_many :facturas
      
      t.timestamps
    end
  end
end

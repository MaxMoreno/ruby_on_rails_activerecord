class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.text :zona
      t.string :pais
      t.text :ciudad

      t.belongs_to :usuario
      # t.has_many :telefonos

      t.timestamps
    end
  end
end

class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.string :calle
      t.string :zona
      t.string :casa
      t.string :ciudad

      t.timestamps
    end
  end
end

class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :titulo
      t.text :descripcion
      t.string :estapa
      t.string :imagen

      t.timestamps
    end
  end
end

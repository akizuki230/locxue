class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.string :lugar
      t.date :fecha
      t.text :descripcion
      t.string :imagen

      t.timestamps
    end
  end
end

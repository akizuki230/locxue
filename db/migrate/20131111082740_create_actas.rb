class CreateActas < ActiveRecord::Migration
  def change
    create_table :actas do |t|
      t.date :fecha_reunion
      t.string :tipo_reunion
      t.string :lugar
      t.text :orden_dia
      t.text :desarrollo
      t.text :tareas
      t.text :conclusiones
      t.integer :user_id

      t.timestamps
    end
    add_index :actas, :user_id
  end
end

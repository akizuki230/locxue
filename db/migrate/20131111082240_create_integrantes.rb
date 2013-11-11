class CreateIntegrantes < ActiveRecord::Migration
  def change
    create_table :integrantes do |t|
      t.string :nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.text :perfil
      t.string :twitter
      t.string :telefono
      t.string :imagen
      t.text :widget
      t.integer :user_id

      t.timestamps
    end
    add_index :integrantes, :user_id
  end
end

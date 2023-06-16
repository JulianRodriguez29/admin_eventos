class CreateEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha
      t.string :imagen

      t.timestamps
    end
  end
end

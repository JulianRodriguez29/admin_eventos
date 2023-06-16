class CreateReservas < ActiveRecord::Migration[7.0]
  def change
    create_table :reservas do |t|
      t.string :nombre
      t.string :correo
      t.string :curp
      t.references :evento, null: false, foreign_key: true

      t.timestamps
    end
  end
end

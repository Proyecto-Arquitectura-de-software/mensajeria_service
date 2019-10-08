class CreateMensajes < ActiveRecord::Migration[5.0]
  def change
    create_table :mensajes do |t|
      t.integer :id_cliente
      t.integer :id_establecimiento
      t.text :mensaje

      t.timestamps
    end
  end
end

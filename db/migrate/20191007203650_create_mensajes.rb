class CreateMensajes < ActiveRecord::Migration[5.0]
  def change
    create_table :mensajes do |t|
      t.string :id_cliente, :limit => 24
      t.string :id_establecimiento :limit => 24
      t.integer :remitente
      t.text :mensaje

      t.timestamps
    end
  end
end

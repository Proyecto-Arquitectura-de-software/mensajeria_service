class Mensaje < ApplicationRecord
    def self.conversacion(id_cliente, id_establecimiento)
        where(id_cliente: id_cliente, id_establecimiento: id_establecimiento).order(created_at: :asc)
    end
end

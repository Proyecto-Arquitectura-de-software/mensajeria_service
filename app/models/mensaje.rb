class Mensaje < ApplicationRecord
    def self.conversacion(id_usuario, id_establecimiento)
        where(id_usuario: id_usuario, id_establecimiento: id_establecimiento).order(created_at: :desc)
    end
end

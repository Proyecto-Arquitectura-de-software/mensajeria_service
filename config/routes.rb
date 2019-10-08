Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/mensaje", to: "mensajes#create"
  delete "/mensaje/:id", to: "mensajes#destroy"
  get "/conversacion/:id_cliente/:id_establecimiento", to: "mensajes#read"
end

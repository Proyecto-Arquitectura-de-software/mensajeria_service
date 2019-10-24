class MensajesController < ApplicationController
    before_action :set_mensaje, only: [:show, :destroy]

    # POST /mensajes
    def create
        @mensaje = Mensaje.new(mensaje_params)
        if @mensaje.save
            render json: @mensaje, status: :created, location: @mensaje
        else
            render json: @mensaje.errors, status: :unprocessable_entity
        end
    end

    # GET /mensajes/:id_cliente/:id_establecimiento
    def read
        @conversacion = Mensaje.conversacion(params[:id_cliente], params[:id_establecimiento])
        render json: @conversacion
    end

    # DELETE /mensajes/:id
    def destroy
        if @mensaje.destroy
            render json: @mensaje, include: []
        else
            render json: @mensaje.errors
        end
    end

    private

    def set_mensaje
        @mensaje = Mensaje.find(params[:id])
    end

    def mensaje_params
        params.permit(:id_cliente, :id_establecimiento, :remitente, :mensaje)
    end
end

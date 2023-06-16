class ReservasController < ApplicationController
  def new
    @evento = Evento.find(params[:evento_id])
    @reserva = Reserva.new
  end

  def create
    @evento = Evento.find(params[:evento_id])
    @reserva = @evento.reservas.build(reserva_params)

    if @reserva.save
      ReservaMailer.confirmacion_reserva(@reserva).deliver_later
      redirect_to eventos_path, notice: "Reserva creada correctamente."
    else
      flash.now[:error] = 'No se pudo crear la reserva.'
      render 'new'
    end
  end

  private

  def reserva_params
    params.require(:reserva).permit(:nombre, :correo, :curp)
  end
end
class ReservaMailer < ApplicationMailer
  default from: 'josejulian_rodriguez@ucol.mx'
  
  def confirmacion_reserva(reserva)
    @reserva = reserva
    mail(to: reserva.correo, subject: 'Confirmación de Reserva')
  end
end
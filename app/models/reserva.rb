class Reserva < ApplicationRecord
  belongs_to :evento

  validates :nombre, :correo, :curp, presence: true
  validates :correo, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end

class User < ApplicationRecord
  has_secure_token
  has_secure_password

  # VALIDACIONES
  enum rol: { empleado: 0, admin: 1 }
  validates :gmail, :password_digest, :rol, presence: true
  validates :gmail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/ }



  def invalidate_token
    update(token: nil)
  end
end

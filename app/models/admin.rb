class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable,
    :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist
  self.skip_session_storage = [:http_auth, :params_auth]

  def on_jwt_dispatch(token, payload)
    update(token: token)
  end
end

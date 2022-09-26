class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  #:database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable,
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      # user.password = Devise.friendly_token[0, 20] # idk if this field is needed
      # user.full_name = auth.info.name
      user.avatar_url = auth.info.image
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      p "auth:" # TODO: remove
      p auth
    end
  end

  def self.from_google(email:, first_name:, last_name:, uid:, avatar_url:)
    # return nil unless email =~ /@mybusiness.com\z/
    create_with(uid: uid, first_name: first_name, last_name: last_name, avatar_url: avatar_url).find_or_create_by!(email: email)
  end
end

# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, :first_name, :last_name, :pronouns, :classification, :major, :phone_number, :uid, :avatar_url, :provider, :role, presence: true
  has_many :attendance_records
  has_many :events, through: :attendance_records
  def full_name
    [first_name, last_name].join(" ")
  end
  # validates :email, uniqueness: true
  validates_uniqueness_of :email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  Roles = %i[admin default].freeze
  # :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable # add these if you want to handle passwords lol
  def is?(role)
    self.role == role.to_s
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      # user.password = Devise.friendly_token[0, 20] # this is needed if database_authenticable
      # user.full_name = auth.info.name
      user.avatar_url = auth.info.image
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.role = 'admin'
    end
  end

  def self.from_google(email:, first_name:, last_name:, uid:, avatar_url:)
    # return nil unless email =~ /@mybusiness.com\z/ # change if we want to restrict certain email domains
    create_with(uid: uid, first_name: first_name, last_name: last_name, avatar_url: avatar_url,
                role: 'admin').find_or_create_by!(email: email)
  end

  require 'csv'
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      p row
      User.create!(row.to_hash)
    end
  end
end

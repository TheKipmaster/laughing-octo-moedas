class User < ActiveRecord::Base
  has_many :refunds, dependent: :destroy
  has_many :conta_bancarium
  belongs_to :nucleo
  belongs_to :cargo
  mount_uploader :avatar, AvatarUploader

  # Validations
  validates :name, :lastname, :cpf, :email, presence: true
  validates :cpf, format: { with: /\A\d{11}\z/ }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

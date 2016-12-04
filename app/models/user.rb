class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :coments

         
   enum role: [ 'Administrador', 'Usuario' ]

validates :nombre, presence: true
validates :apellido_paterno, presence: true
validates :apellido_materno, presence: true
validates :role, presence: true
end

class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # validates :full_name, presence: true
    # validates :batch, presence: true
    validates :email, presence: true
    # validates :student, presence: true
    # validates :admin, presence: true


  

end

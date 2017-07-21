class User < ApplicationRecord
has_many :couples

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #  validates :full_name, presence: true
  #  validates :batch, presence: true
    validates :email, presence: true
#    validates :student, presence: true

scope :only_students, -> { where(student: true) }

end

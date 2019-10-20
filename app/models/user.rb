class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :default_name

  has_many :reviews, dependent: :destroy

  def initials
    "#{first_name.first}#{last_name.first}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def default_name
    self.first_name = "Bookwrm" unless first_name.present?
    self.last_name = "User" unless last_name.present?
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :name, :encrypted_password, presence: true  
  validates :email,
   presence: true,
   format: {
     with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
      message: "should be a valid email"
    }
  
  has_many :bills
  has_many :expenses
  has_many :incomes
end

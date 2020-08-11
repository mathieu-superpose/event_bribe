class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	after_create :welcome_send

  
	has_many :attendances
	has_many :events, foreign_key: 'organizer_id', class_name: "Event"
	
	#validates :first_name, presence: {message: "prénom obligatoire"}
	#validates :last_name, presence: {message: "nom de famille obligatoire"}
	#validates :email,
    #presence: {message: "email obligatoire"},
    #uniqueness: {message: "email déjà utilisé"},
    #format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "rentrez votre adresse email complète" }
    
    def welcome_send
    	UserMailer.welcome_email(self).deliver_now
  	end
end

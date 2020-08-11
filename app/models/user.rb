class User < ApplicationRecord
	has_many :attendances
	has_many :events, foreign_key: 'organizer_id', class_name: "Event"
	
	validates :first_name, presence: {message: "prénom obligatoire"}
	validates :last_name, presence: {message: "nom de famille obligatoire"}
	#validates :email,
    #presence: {message: "email obligatoire"},
    #uniqueness: {message: "email déjà utilisé"},
    #format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "rentrez votre adresse email complète" }
    
end

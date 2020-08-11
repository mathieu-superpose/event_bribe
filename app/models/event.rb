class Event < ApplicationRecord
	
    belongs_to :organizer, foreign_key:'organizer_id', class_name: 'User'
    has_many :attendances
    has_many :participants, through: :attendances, class_name: 'User'

    validates :start_date,
      presence: {message: "date obligatoire"}
    validates :duration,
      presence: {message: "durée obligatoire"}
    validate :duration_format
    validates :title,
    presence: {message: "intitulé obligatoire"},
    length: { in: 6..20 }
    validates :description,
    presence: {message: "description obligatoire"},
    length: { in: 20..1000 }
    validates :price,
    presence: {message: "prix obligatoire"},
    length: { in: 1..1000 }
    validates :location,
    presence: {message: "emplacement obligatoire"}

    def duration_format
    	if self.duration % 5 != 0 || self.duration < 0
      self.errors[:base] << "La durée en minute doit être positive et multiple de 5!"
    	end
  	end
end

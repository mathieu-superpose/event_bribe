class Attendance < ApplicationRecord
	after_create :confirmation_send

	has_many :attendants, foreign_key:'attendant_id', class_name: 'User'
	has_many :events

	def confirmation_send
    	UserMailer.confirmation_email(self).deliver_now
  	end
end

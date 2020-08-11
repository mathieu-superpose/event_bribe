class Attendance < ApplicationRecord
	has_many :attendants, foreign_key:'attendant_id', class_name: 'User'
	has_many :events
end

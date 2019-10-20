class Author < ApplicationRecord

	validates_presence_of :first_name, :last_name

	has_many :books

	scope :alphabetical, -> { order(last_name: :asc) }

	def full_name 
		"#{first_name} #{last_name}"
	end

	end

class Main < ActiveRecord::Base
	has_many :universties
	has_many :courses
	belongs_to :courses
	belongs_to :universities
end

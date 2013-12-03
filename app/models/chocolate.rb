class Chocolate < ActiveRecord::Base
	validates_presence_of :name, :description
	validates_numericality_of :cocoa_percentage, :only_integer =>true, :greater_than_or_equal_to =>0, 
		:less_than_or_equal_to =>100 
end

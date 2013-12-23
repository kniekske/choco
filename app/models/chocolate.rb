class Chocolate < ActiveRecord::Base
	has_many :comments, dependent: :destroy

	validates_presence_of :name, :description, :image
	validates_numericality_of :cocoa_percentage, :only_integer =>true, :greater_than_or_equal_to =>0, 
		:less_than_or_equal_to =>100 


	mount_uploader :image, ImageUploader
end

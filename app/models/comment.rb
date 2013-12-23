class Comment < ActiveRecord::Base
  belongs_to :chocolate

  validates_presence_of :chocolate_id
  validates_presence_of :name, :comment, :email
  validates_numericality_of :rating, :only_integer =>true, :greater_than_or_equal_to =>0, 
		:less_than_or_equal_to =>5 
end

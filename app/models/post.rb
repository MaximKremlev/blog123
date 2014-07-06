class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :users
	def to_param
		"#{id}-#{title.parameterize}"
	end
end

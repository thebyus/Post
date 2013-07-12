class Category<ActiveRecord::Base
		has_many :cats
		has_many :posts, through: :cats

		validates :name, presence: true


end
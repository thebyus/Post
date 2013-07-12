class Post < ActiveRecord::Base
	belongs_to :creator, class_name: 'User', foreign_key: :user_id
	has_many :comments
	has_many :cats
	has_many :categories, through: :cats

	validates :title, presence: true, length: {minimum: 3}
	validates :url, presence: true
	validates :description, presence: true
end
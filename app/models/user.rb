class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_secure_password
	has_one :site
	has_many :comments
end

class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_one :site, dependent: :destroy
  has_many :comments, dependent: :destroy
end

class User < ActiveRecord::Base
	validates :name, :uniqueness => true
	validates :email, :uniqueness => true
	validates :memtype, :uniqueness => true
end

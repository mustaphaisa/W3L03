class User < ActiveRecord::Base
  attr_accessible :account, :email, :name, :username

  has_many :narratives
  has_many :events through: :narratives
  
end

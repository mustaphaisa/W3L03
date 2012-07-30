class Event < ActiveRecord::Base
  attr_accessible :date, :name, :summary

  has_many :narratives
  has_many :users through: :narratives

end

class Narrative < ActiveRecord::Base
  attr_accessible :content, :location, :title

  belongs_to :event
  belongs_to :user
   
end

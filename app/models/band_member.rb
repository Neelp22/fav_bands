class BandMember < ActiveRecord::Base
  attr_accessible :name, :age

  belongs_to :band
end

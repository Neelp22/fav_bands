class Band < ActiveRecord::Base
  attr_accessible :name, :num_albums, :lead_singer

  has_many :band_members
end

class Listing < ActiveRecord::Base

  include HasGravatar

  has_many :bids

end

class Bid < ActiveRecord::Base

  include HasGravatar

  belongs_to :listing

end

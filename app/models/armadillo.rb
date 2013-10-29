class Armadillo < ActiveRecord::Base
  attr_accessible :codename, :name

  validates_presence_of :name,
    :codename
end

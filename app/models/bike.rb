class Bike < ActiveRecord::Base
  validates :name, presence: true
end
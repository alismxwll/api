class Booking < ActiveRecord::Base
  validates :name, :description, :file, presence: true
end

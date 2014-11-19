class Character < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :name, :description, :file, presence: true
end

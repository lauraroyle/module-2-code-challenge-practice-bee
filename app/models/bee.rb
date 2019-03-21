class Bee < ApplicationRecord
  belongs_to :hive
  has_many :flights
  has_many :flowers, through: :flights

  validates :name, presence: true
  validates :name, uniqueness: true

end

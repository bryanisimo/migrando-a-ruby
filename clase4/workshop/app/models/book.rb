class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :year,
    presence: true,
    numericality: { only_integer: true }
end
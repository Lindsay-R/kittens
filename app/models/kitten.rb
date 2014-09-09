class Kitten < ActiveRecord::Base
  has_many :categories, through: :joins
  has_many :joins

  validates :image, presence: true


end
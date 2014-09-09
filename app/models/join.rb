class Join < ActiveRecord::Base

  validates_presence_of :category
  validates_uniqueness_of :category_id, :scope => :kitten_id
  belongs_to :kitten
  belongs_to :category
end
class Item < ActiveRecord::Base
  validates :artist, :presence => true
  validates :title, :presence => true
  validates :link, :presence => true

  belongs_to :list
  belongs_to :user
end

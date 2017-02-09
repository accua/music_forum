class Item < ActiveRecord::Base
  validates :artist, :presence => true
  validates :title, :presence => true
  validates :link, :presence => true
  belongs_to :user
  has_and_belongs_to_many :lists
  after_initialize :init

  def init
    self.upvote ||=0
    self.downvote ||=0
    self.total_votes ||=0
    self.popularity ||=0
  end
end

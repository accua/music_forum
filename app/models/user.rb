class User < ActiveRecord::Base
  validates :user_name, :presence => true
  has_many :items
  belongs_to :list
  has_many :lists, through: :items
end

class Position < ActiveRecord::Base
  attr_accessible :title, :election

  validates :title, :presence => true

  belongs_to :election
  has_and_belongs_to_many :candidates, :uniq => true
  has_many :votes
end

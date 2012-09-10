class Node < ActiveRecord::Base

  has_many :node_relationship_groups
  has_many :relationship_groups, :through => :node_relationship_groups

  scope :available, where(:available => true)

  attr_accessible :name

  validates :name, :presence => true, :uniqueness => true

  def satisfied?
    relationship_groups.all? &:satisfied?
  end

  def to_s
    name
  end

end

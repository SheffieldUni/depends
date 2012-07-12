class Node < ActiveRecord::Base

  has_many :relationships, :dependent => :destroy
  has_many :dependency_nodes, :through => :relationships, :class_name => 'Node'
  has_many :relationship_nodes, :dependent => :destroy 

  scope :available, where(:available => true)

  attr_accessible :name

  validates :name, :presence => true, :uniqueness => true

  def satisfied?
    relationships.all? &:satisfied?
  end

  def to_s
    name
  end

end

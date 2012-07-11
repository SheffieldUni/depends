class Relationship < ActiveRecord::Base
  belongs_to :node
  has_many :dependency_nodes, :class_name => 'Node', :through => :relationship_nodes, :source => :node
  has_many :relationship_nodes, :dependent => :destroy

  def satisfied?
    dependency_nodes.available.count >= minimum
  end

end

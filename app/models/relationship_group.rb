class RelationshipGroup < ActiveRecord::Base
  has_many :relationship_nodes
  has_many :node_relationship_groups
  has_many :rnodes, :through => :relationship_nodes, :class_name => 'Node', :source => :node
  has_many :nodes, :through => :node_relationship_groups, :class_name => 'Node', :source => :node
  
  def satisfied?
    relationship_nodes.available.count >= minimum
  end

end

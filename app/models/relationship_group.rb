class RelationshipGroup < ActiveRecord::Base
  has_many :relationship_nodes
  has_many :node_relationship_groups
  has_many :rnodes, :through => :relationship_nodes, :class_name => 'Node', :source => :node
  has_many :nodes, :through => :node_relationship_groups, :class_name => 'Node', :source => :node

  attr_accessible :rnode_ids
  attr_accessible :minimum
  attr_accessible :name
  
  def satisfied?
    rnodes.available.count >= ( minimum > -1 ) ? minimum : rnodes.count
  end
  
  def satisfied_by
    ( minimum > -1 ) ? "at least #{minimum}" : 'all'
  end
  
  def to_s
    name
  end

end

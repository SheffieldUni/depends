class RelationshipNode < ActiveRecord::Base
  belongs_to :relationship_group
  belongs_to :node
end
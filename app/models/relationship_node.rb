class RelationshipNode < ActiveRecord::Base
  belongs_to :relationship
  belongs_to :node
end

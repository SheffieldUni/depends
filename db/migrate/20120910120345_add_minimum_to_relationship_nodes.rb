class AddMinimumToRelationshipNodes < ActiveRecord::Migration
  def change
    add_column :relationship_nodes, :minimum, :integer, :default => 1
  end
end

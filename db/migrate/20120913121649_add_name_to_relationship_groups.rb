class AddNameToRelationshipGroups < ActiveRecord::Migration
  def change
    add_column :relationship_groups, :name, :string, { :null => false, :default => 'Unnamed Relationship Group' }
  end
end

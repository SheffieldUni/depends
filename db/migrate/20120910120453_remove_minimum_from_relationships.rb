class RemoveMinimumFromRelationships < ActiveRecord::Migration
  def up
    remove_column :relationships, :minimum
  end

  def down
    add_column :relationships, :minimum, :integer
  end
end

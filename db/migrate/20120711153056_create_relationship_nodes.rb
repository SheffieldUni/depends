class CreateRelationshipNodes < ActiveRecord::Migration
  def change
    create_table :relationship_nodes do |t|
      t.belongs_to :relationship
      t.belongs_to :node
    end
  end
end

class AddAvailableToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :available, :boolean, :default => true
  end
end

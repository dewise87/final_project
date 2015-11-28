class RemoveShouldCostFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :should_cost
  end
end

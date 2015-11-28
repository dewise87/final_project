class RemoveIndirectCostsFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :indirect_costs
  end
end

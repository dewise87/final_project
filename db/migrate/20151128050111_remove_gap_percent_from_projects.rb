class RemoveGapPercentFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :gap_percent
  end
end

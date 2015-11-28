class RemoveGapDollarFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :gap_dollar
  end
end

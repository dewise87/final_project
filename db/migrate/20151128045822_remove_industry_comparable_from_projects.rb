class RemoveIndustryComparableFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :industry_comparables
  end
end

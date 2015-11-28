class AddProfitToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :profit, :float
  end
end

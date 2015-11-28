class AddRdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :rd, :float
  end
end

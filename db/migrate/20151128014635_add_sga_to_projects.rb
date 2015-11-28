class AddSgaToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :sga, :float
  end
end

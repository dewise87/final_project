class CreateIndirectCosts < ActiveRecord::Migration
  def change
    create_table :indirect_costs do |t|
      t.string :project_id
      t.float :profit
      t.float :sga
      t.float :rd

      t.timestamps

    end
  end
end

class CreateDirectCosts < ActiveRecord::Migration
  def change
    create_table :direct_costs do |t|
      t.float :amount
      t.string :category_name
      t.string :project_id

      t.timestamps

    end
  end
end

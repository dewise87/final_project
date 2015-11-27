class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :industry_comparable_id
      t.float :indirect_costs
      t.float :direct_costs
      t.integer :gap_dollar
      t.integer :gap_percent
      t.integer :should_cost
      t.integer :actual_cost
      t.string :industry
      t.string :name

      t.timestamps

    end
  end
end

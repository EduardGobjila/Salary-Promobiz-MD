class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.integer :salary
      t.integer :bonus
      t.string :month
      t.timestamps
    end
  end
end

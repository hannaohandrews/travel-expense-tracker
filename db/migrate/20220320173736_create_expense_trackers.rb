class CreateExpenseTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_trackers do |t|
      t.date :date
      t.string :place
      t.string :category
      t.integer :amount
      t.integer :total

      t.timestamps
    end
  end
end

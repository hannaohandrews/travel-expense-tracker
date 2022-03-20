
ActiveRecord::Schema[7.0].define(version: 2022_03_20_173736) do
  create_table "expense_trackers", force: :cascade do |t|
    t.date "date"
    t.string "place"
    t.string "category"
    t.integer "amount"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

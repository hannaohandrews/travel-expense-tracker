json.extract! expense_tracker, :id, :date, :place, :category, :amount, :total, :created_at, :updated_at
json.url expense_tracker_url(expense_tracker, format: :json)

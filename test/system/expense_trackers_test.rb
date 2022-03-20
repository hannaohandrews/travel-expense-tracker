require "application_system_test_case"

class ExpenseTrackersTest < ApplicationSystemTestCase
  setup do
    @expense_tracker = expense_trackers(:one)
  end

  test "visiting the index" do
    visit expense_trackers_url
    assert_selector "h1", text: "Expense trackers"
  end

  test "should create expense tracker" do
    visit expense_trackers_url
    click_on "New expense tracker"

    fill_in "Amount", with: @expense_tracker.amount
    fill_in "Category", with: @expense_tracker.category
    fill_in "Date", with: @expense_tracker.date
    fill_in "Place", with: @expense_tracker.place
    fill_in "Total", with: @expense_tracker.total
    click_on "Create Expense tracker"

    assert_text "Expense tracker was successfully created"
    click_on "Back"
  end

  test "should update Expense tracker" do
    visit expense_tracker_url(@expense_tracker)
    click_on "Edit this expense tracker", match: :first

    fill_in "Amount", with: @expense_tracker.amount
    fill_in "Category", with: @expense_tracker.category
    fill_in "Date", with: @expense_tracker.date
    fill_in "Place", with: @expense_tracker.place
    fill_in "Total", with: @expense_tracker.total
    click_on "Update Expense tracker"

    assert_text "Expense tracker was successfully updated"
    click_on "Back"
  end

  test "should destroy Expense tracker" do
    visit expense_tracker_url(@expense_tracker)
    click_on "Destroy this expense tracker", match: :first

    assert_text "Expense tracker was successfully destroyed"
  end
end

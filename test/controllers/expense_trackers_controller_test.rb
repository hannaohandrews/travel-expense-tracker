require "test_helper"

class ExpenseTrackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expense_tracker = expense_trackers(:one)
  end

  test "should get index" do
    get expense_trackers_url
    assert_response :success
  end

  test "should get new" do
    get new_expense_tracker_url
    assert_response :success
  end

  test "should create expense_tracker" do
    assert_difference("ExpenseTracker.count") do
      post expense_trackers_url, params: { expense_tracker: { amount: @expense_tracker.amount, category: @expense_tracker.category, date: @expense_tracker.date, place: @expense_tracker.place, total: @expense_tracker.total } }
    end

    assert_redirected_to expense_tracker_url(ExpenseTracker.last)
  end

  test "should show expense_tracker" do
    get expense_tracker_url(@expense_tracker)
    assert_response :success
  end

  test "should get edit" do
    get edit_expense_tracker_url(@expense_tracker)
    assert_response :success
  end

  test "should update expense_tracker" do
    patch expense_tracker_url(@expense_tracker), params: { expense_tracker: { amount: @expense_tracker.amount, category: @expense_tracker.category, date: @expense_tracker.date, place: @expense_tracker.place, total: @expense_tracker.total } }
    assert_redirected_to expense_tracker_url(@expense_tracker)
  end

  test "should destroy expense_tracker" do
    assert_difference("ExpenseTracker.count", -1) do
      delete expense_tracker_url(@expense_tracker)
    end

    assert_redirected_to expense_trackers_url
  end
end

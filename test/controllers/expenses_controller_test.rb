require 'test_helper'

class ExpensesControllerTest < ActionController::TestCase
  setup do
    @expense = expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post :create, expense: { bazaar: @expense.bazaar, cleaning: @expense.cleaning, cost_with_consultants: @expense.cost_with_consultants, date: @expense.date, donation: @expense.donation, energy: @expense.energy, food: @expense.food, for_rent: @expense.for_rent, healing_house: @expense.healing_house, hp: @expense.hp, internet: @expense.internet, phone: @expense.phone, safety: @expense.safety, stationary: @expense.stationary, store: @expense.store, wather: @expense.wather }
    end

    assert_redirected_to expense_path(assigns(:expense))
  end

  test "should show expense" do
    get :show, id: @expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expense
    assert_response :success
  end

  test "should update expense" do
    patch :update, id: @expense, expense: { bazaar: @expense.bazaar, cleaning: @expense.cleaning, cost_with_consultants: @expense.cost_with_consultants, date: @expense.date, donation: @expense.donation, energy: @expense.energy, food: @expense.food, for_rent: @expense.for_rent, healing_house: @expense.healing_house, hp: @expense.hp, internet: @expense.internet, phone: @expense.phone, safety: @expense.safety, stationary: @expense.stationary, store: @expense.store, wather: @expense.wather }
    assert_redirected_to expense_path(assigns(:expense))
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete :destroy, id: @expense
    end

    assert_redirected_to expenses_path
  end
end

require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, recipe: { canteen_card: @recipe.canteen_card, canteen_money: @recipe.canteen_money, date: @recipe.date, donation_card: @recipe.donation_card, donation_money: @recipe.donation_money, raffle_card: @recipe.raffle_card, raffle_money: @recipe.raffle_money, store_card: @recipe.store_card, store_money: @recipe.store_money }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should show recipe" do
    get :show, id: @recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe
    assert_response :success
  end

  test "should update recipe" do
    patch :update, id: @recipe, recipe: { canteen_card: @recipe.canteen_card, canteen_money: @recipe.canteen_money, date: @recipe.date, donation_card: @recipe.donation_card, donation_money: @recipe.donation_money, raffle_card: @recipe.raffle_card, raffle_money: @recipe.raffle_money, store_card: @recipe.store_card, store_money: @recipe.store_money }
    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete :destroy, id: @recipe
    end

    assert_redirected_to recipes_path
  end
end

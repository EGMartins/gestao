require 'test_helper'

class SolidaritiesControllerTest < ActionController::TestCase
  setup do
    @solidarity = solidarities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solidarities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solidarity" do
    assert_difference('Solidarity.count') do
      post :create, solidarity: { card: @solidarity.card, money: @solidarity.money, name: @solidarity.name, recipe_id: @solidarity.recipe_id }
    end

    assert_redirected_to solidarity_path(assigns(:solidarity))
  end

  test "should show solidarity" do
    get :show, id: @solidarity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solidarity
    assert_response :success
  end

  test "should update solidarity" do
    patch :update, id: @solidarity, solidarity: { card: @solidarity.card, money: @solidarity.money, name: @solidarity.name, recipe_id: @solidarity.recipe_id }
    assert_redirected_to solidarity_path(assigns(:solidarity))
  end

  test "should destroy solidarity" do
    assert_difference('Solidarity.count', -1) do
      delete :destroy, id: @solidarity
    end

    assert_redirected_to solidarities_path
  end
end

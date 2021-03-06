require 'test_helper'

class PlantsControllerTest < ActionController::TestCase
  setup do

    #turn out ability
    @ability = Object.new
    @ability.extend(CanCan::Ability)
    @ability.can :manage, :all
    @controller.stubs(:current_ability).returns(@ability)


    @plant = plants(:Zwiebel)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant without family" do
    assert_difference('Plant.count') do
      post :create, :plant =>  {:name => "plant with family" ,:family_id => "1", :seed_from_month => "5", :seed_to_month => "6"}
    end

    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should create plant with family" do
    assert_difference('Plant.count') do
      post :create, :plant => {:name => "plant with family" ,:family_id => "1", :seed_from_month => "5", :seed_to_month => "6"}
    end

    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should show plant" do
    get :show, :id => @plant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @plant.to_param
    assert_response :success
  end

  test "should update plant" do
    put :update, :id => @plant.to_param, :plant => @plant.attributes
    assert_redirected_to plant_path(assigns(:plant))
  end

  test "should destroy plant" do
    assert_difference('Plant.count', -1) do
      delete :destroy, :id => @plant.to_param
    end

    assert_redirected_to plants_path
  end
end

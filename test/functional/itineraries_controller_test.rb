require 'test_helper'

class ItinerariesControllerTest < ActionController::TestCase
  setup do
    @itinerary = itineraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itinerary" do
    assert_difference('Itinerary.count') do
      post :create, :itinerary => @itinerary.attributes
    end

    assert_redirected_to itinerary_path(assigns(:itinerary))
  end

  test "should show itinerary" do
    get :show, :id => @itinerary.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @itinerary.to_param
    assert_response :success
  end

  test "should update itinerary" do
    put :update, :id => @itinerary.to_param, :itinerary => @itinerary.attributes
    assert_redirected_to itinerary_path(assigns(:itinerary))
  end

  test "should destroy itinerary" do
    assert_difference('Itinerary.count', -1) do
      delete :destroy, :id => @itinerary.to_param
    end

    assert_redirected_to itineraries_path
  end
end

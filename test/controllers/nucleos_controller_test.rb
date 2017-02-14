require 'test_helper'

class NucleosControllerTest < ActionController::TestCase
  setup do
    @nucleo = nucleos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nucleos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nucleo" do
    assert_difference('Nucleo.count') do
      post :create, nucleo: { nome: @nucleo.nome }
    end

    assert_redirected_to nucleo_path(assigns(:nucleo))
  end

  test "should show nucleo" do
    get :show, id: @nucleo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nucleo
    assert_response :success
  end

  test "should update nucleo" do
    patch :update, id: @nucleo, nucleo: { nome: @nucleo.nome }
    assert_redirected_to nucleo_path(assigns(:nucleo))
  end

  test "should destroy nucleo" do
    assert_difference('Nucleo.count', -1) do
      delete :destroy, id: @nucleo
    end

    assert_redirected_to nucleos_path
  end
end

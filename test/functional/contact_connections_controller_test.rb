require 'test_helper'

class ContactConnectionsControllerTest < ActionController::TestCase
  setup do
    @contact_connection = contact_connections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_connections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_connection" do
    assert_difference('ContactConnection.count') do
      post :create, contact_connection: @contact_connection.attributes
    end

    assert_redirected_to contact_connection_path(assigns(:contact_connection))
  end

  test "should show contact_connection" do
    get :show, id: @contact_connection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_connection
    assert_response :success
  end

  test "should update contact_connection" do
    put :update, id: @contact_connection, contact_connection: @contact_connection.attributes
    assert_redirected_to contact_connection_path(assigns(:contact_connection))
  end

  test "should destroy contact_connection" do
    assert_difference('ContactConnection.count', -1) do
      delete :destroy, id: @contact_connection
    end

    assert_redirected_to contact_connections_path
  end
end

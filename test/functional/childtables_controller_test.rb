require 'test_helper'

class ChildtablesControllerTest < ActionController::TestCase
  setup do
    @childtable = childtables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:childtables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create childtable" do
    assert_difference('Childtable.count') do
      post :create, childtable: { description_of_Table: @childtable.description_of_Table, name: @childtable.name, other_detail: @childtable.other_detail, table_id: @childtable.table_id }
    end

    assert_redirected_to childtable_path(assigns(:childtable))
  end

  test "should show childtable" do
    get :show, id: @childtable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @childtable
    assert_response :success
  end

  test "should update childtable" do
    put :update, id: @childtable, childtable: { description_of_Table: @childtable.description_of_Table, name: @childtable.name, other_detail: @childtable.other_detail, table_id: @childtable.table_id }
    assert_redirected_to childtable_path(assigns(:childtable))
  end

  test "should destroy childtable" do
    assert_difference('Childtable.count', -1) do
      delete :destroy, id: @childtable
    end

    assert_redirected_to childtables_path
  end
end

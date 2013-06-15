require 'test_helper'

class BillSharesControllerTest < ActionController::TestCase
  setup do
    @bill_share = bill_shares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_shares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_share" do
    assert_difference('BillShare.count') do
      post :create, bill_share: { bill_id: @bill_share.bill_id, percent: @bill_share.percent, user_id: @bill_share.user_id }
    end

    assert_redirected_to bill_share_path(assigns(:bill_share))
  end

  test "should show bill_share" do
    get :show, id: @bill_share
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_share
    assert_response :success
  end

  test "should update bill_share" do
    put :update, id: @bill_share, bill_share: { bill_id: @bill_share.bill_id, percent: @bill_share.percent, user_id: @bill_share.user_id }
    assert_redirected_to bill_share_path(assigns(:bill_share))
  end

  test "should destroy bill_share" do
    assert_difference('BillShare.count', -1) do
      delete :destroy, id: @bill_share
    end

    assert_redirected_to bill_shares_path
  end
end

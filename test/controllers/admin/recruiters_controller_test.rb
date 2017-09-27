require 'test_helper'

class Admin::RecruitersControllerTest < ActionController::TestCase
  setup do
    @admin_recruiter = admin_recruiters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_recruiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_recruiter" do
    assert_difference('Admin::Recruiter.count') do
      post :create, admin_recruiter: { company_id: @admin_recruiter.company_id, contract_id: @admin_recruiter.contract_id, email: @admin_recruiter.email, password: @admin_recruiter.password, phone: @admin_recruiter.phone }
    end

    assert_redirected_to admin_recruiter_path(assigns(:admin_recruiter))
  end

  test "should show admin_recruiter" do
    get :show, id: @admin_recruiter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_recruiter
    assert_response :success
  end

  test "should update admin_recruiter" do
    patch :update, id: @admin_recruiter, admin_recruiter: { company_id: @admin_recruiter.company_id, contract_id: @admin_recruiter.contract_id, email: @admin_recruiter.email, password: @admin_recruiter.password, phone: @admin_recruiter.phone }
    assert_redirected_to admin_recruiter_path(assigns(:admin_recruiter))
  end

  test "should destroy admin_recruiter" do
    assert_difference('Admin::Recruiter.count', -1) do
      delete :destroy, id: @admin_recruiter
    end

    assert_redirected_to admin_recruiters_path
  end
end

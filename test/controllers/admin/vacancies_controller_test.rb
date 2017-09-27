require 'test_helper'

class Admin::VacanciesControllerTest < ActionController::TestCase
  setup do
    @admin_vacancy = admin_vacancies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_vacancies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_vacancy" do
    assert_difference('Admin::Vacancy.count') do
      post :create, admin_vacancy: { deal_line: @admin_vacancy.deal_line, expected_skills: @admin_vacancy.expected_skills, job_summary: @admin_vacancy.job_summary, job_title: @admin_vacancy.job_title, job_type: @admin_vacancy.job_type, locations: @admin_vacancy.locations, max_sal: @admin_vacancy.max_sal, min_sal: @admin_vacancy.min_sal }
    end

    assert_redirected_to admin_vacancy_path(assigns(:admin_vacancy))
  end

  test "should show admin_vacancy" do
    get :show, id: @admin_vacancy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_vacancy
    assert_response :success
  end

  test "should update admin_vacancy" do
    patch :update, id: @admin_vacancy, admin_vacancy: { deal_line: @admin_vacancy.deal_line, expected_skills: @admin_vacancy.expected_skills, job_summary: @admin_vacancy.job_summary, job_title: @admin_vacancy.job_title, job_type: @admin_vacancy.job_type, locations: @admin_vacancy.locations, max_sal: @admin_vacancy.max_sal, min_sal: @admin_vacancy.min_sal }
    assert_redirected_to admin_vacancy_path(assigns(:admin_vacancy))
  end

  test "should destroy admin_vacancy" do
    assert_difference('Admin::Vacancy.count', -1) do
      delete :destroy, id: @admin_vacancy
    end

    assert_redirected_to admin_vacancies_path
  end
end

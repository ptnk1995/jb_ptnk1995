module Admin
  class VacanciesController < ApplicationController
    before_action :set_admin_vacancy, only: [:show, :edit, :update, :destroy]

    # GET /admin/vacancies
    # GET /admin/vacancies.json
    def index
      @admin_vacancies = Vacancy.all
    end

    # GET /admin/vacancies/1
    # GET /admin/vacancies/1.json
    def show
    end

    # GET /admin/vacancies/new
    def new
      @admin_vacancy = Vacancy.new
    end

    # GET /admin/vacancies/1/edit
    def edit
    end

    # POST /admin/vacancies
    # POST /admin/vacancies.json
    def create
      @admin_vacancy = Vacancy.new(admin_vacancy_params)

      respond_to do |format|
        if @admin_vacancy.save
          format.html { redirect_to @admin_vacancy, notice: 'Vacancy was successfully created.' }
          format.json { render :show, status: :created, location: @admin_vacancy }
        else
          format.html { render :new }
          format.json { render json: @admin_vacancy.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/vacancies/1
    # PATCH/PUT /admin/vacancies/1.json
    def update
      respond_to do |format|
        if @admin_vacancy.update(admin_vacancy_params)
          format.html { redirect_to @admin_vacancy, notice: 'Vacancy was successfully updated.' }
          format.json { render :show, status: :ok, location: @admin_vacancy }
        else
          format.html { render :edit }
          format.json { render json: @admin_vacancy.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/vacancies/1
    # DELETE /admin/vacancies/1.json
    def destroy
      @admin_vacancy.destroy
      respond_to do |format|
        format.html { redirect_to admin_vacancies_url, notice: 'Vacancy was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_admin_vacancy
      @admin_vacancy = Vacancy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_vacancy_params
      params.require(:admin_vacancy).permit(:job_title, :job_summary, :job_type, :min_sal, :max_sal, :deal_line, :expected_skills, :locations)
    end
  end
end

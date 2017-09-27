module Admin
  class RecruitersController < ApplicationController
    before_action :set_admin_recruiter, only: [:show, :edit, :update, :destroy]

    # GET /admin/recruiters
    # GET /admin/recruiters.json
    def index
      @admin_recruiters = Recruiter.all
    end

    # GET /admin/recruiters/1
    # GET /admin/recruiters/1.json
    def show
    end

    # GET /admin/recruiters/new
    def new
      @admin_recruiter = Recruiter.new
    end

    # GET /admin/recruiters/1/edit
    def edit
    end

    # POST /admin/recruiters
    # POST /admin/recruiters.json
    def create
      @admin_recruiter = Recruiter.new(admin_recruiter_params)

      respond_to do |format|
        if @admin_recruiter.save
          format.html { redirect_to @admin_recruiter, notice: 'Recruiter was successfully created.' }
          format.json { render :show, status: :created, location: @admin_recruiter }
        else
          format.html { render :new }
          format.json { render json: @admin_recruiter.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/recruiters/1
    # PATCH/PUT /admin/recruiters/1.json
    def update
      respond_to do |format|
        if @admin_recruiter.update(admin_recruiter_params)
          format.html { redirect_to @admin_recruiter, notice: 'Recruiter was successfully updated.' }
          format.json { render :show, status: :ok, location: @admin_recruiter }
        else
          format.html { render :edit }
          format.json { render json: @admin_recruiter.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/recruiters/1
    # DELETE /admin/recruiters/1.json
    def destroy
      @admin_recruiter.destroy
      respond_to do |format|
        format.html { redirect_to admin_recruiters_url, notice: 'Recruiter was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_admin_recruiter
      @admin_recruiter = Recruiter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_recruiter_params
      params.require(:admin_recruiter).permit(:contract_id, :password, :email, :phone, :company_id)
    end
  end
end

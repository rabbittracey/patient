class PatientProfileAllergiesController < ApplicationController
  before_action :set_patient_profile_allergy, only: [:show, :edit, :update, :destroy]

  # GET /patient_profile_allergies
  # GET /patient_profile_allergies.json
  def index


    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @patient_profile_allergies=@patient.patient_profile_allergies.all
  end

  # GET /patient_profile_allergies/1
  # GET /patient_profile_allergies/1.json
  def show
    @patient=Patient.find_by_id(params[:id])
    @patient_profile_allergies=PatientProfileAllergy.find_by_patient_id(@patient.id)

  end

  # GET /patient_profile_allergies/new
  def new
    @patient_profile_allergy = PatientProfileAllergy.new
  end

  # GET /patient_profile_allergies/1/edit
  def edit
    @patient=Patient.find_by_id(params[:id])
    @patient_profile_allergies=PatientProfileAllergy.find_by_patient_id(@patient.id)
  end

  # POST /patient_profile_allergies
  # POST /patient_profile_allergies.json
  def create
    @user=current_user
    @patient=Patient.find_by_user_id(@user.id)
    @patient_profile_allergy = PatientProfileAllergy.new(patient_profile_allergy_params)
    @patient_profile_allergy.patient_id=@patient.id
    respond_to do |format|
      if @patient_profile_allergy.save
        format.html { redirect_to @patient_profile_allergy, notice: 'Patient profile allergy was successfully created.' }
        format.json { render :show, status: :created, location: @patient_profile_allergy }
      else
        format.html { render :new }
        format.json { render json: @patient_profile_allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_profile_allergies/1
  # PATCH/PUT /patient_profile_allergies/1.json
  def update
    respond_to do |format|
      if @patient_profile_allergy.update(patient_profile_allergy_params)
        format.html { redirect_to @patient_profile_allergy, notice: 'Patient profile allergy was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient_profile_allergy }
      else
        format.html { render :edit }
        format.json { render json: @patient_profile_allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_profile_allergies/1
  # DELETE /patient_profile_allergies/1.json
  def destroy
    @patient_profile_allergy.destroy
    respond_to do |format|
      format.html { redirect_to patient_profile_allergies_url, notice: 'Patient profile allergy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_profile_allergy

      @user=current_user
      @patient=Patient.find_by_user_id(@user.id)

      @patient_profile_allergy = PatientProfileAllergy.find_by_patient_id(@patient.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_profile_allergy_params
       params.require(:patient_profile_allergy).permit(:allergy_name,:reaction)

    end
end

require 'test_helper'

class PatientProfileAllergiesControllerTest < ActionController::TestCase
  setup do
    @patient_profile_allergy = patient_profile_allergies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_profile_allergies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_profile_allergy" do
    assert_difference('PatientProfileAllergy.count') do
      post :create, patient_profile_allergy: {  }
    end

    assert_redirected_to patient_profile_allergy_path(assigns(:patient_profile_allergy))
  end

  test "should show patient_profile_allergy" do
    get :show, id: @patient_profile_allergy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_profile_allergy
    assert_response :success
  end

  test "should update patient_profile_allergy" do
    patch :update, id: @patient_profile_allergy, patient_profile_allergy: {  }
    assert_redirected_to patient_profile_allergy_path(assigns(:patient_profile_allergy))
  end

  test "should destroy patient_profile_allergy" do
    assert_difference('PatientProfileAllergy.count', -1) do
      delete :destroy, id: @patient_profile_allergy
    end

    assert_redirected_to patient_profile_allergies_path
  end
end

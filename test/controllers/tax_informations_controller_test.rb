require 'test_helper'

class TaxInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_information = tax_informations(:one)
  end

  test "should get index" do
    get tax_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_information_url
    assert_response :success
  end

  test "should create tax_information" do
    assert_difference('TaxInformation.count') do
      post tax_informations_url, params: { tax_information: { capital_gains: @tax_information.capital_gains, self_employment: @tax_information.self_employment, unemployment_insurance: @tax_information.unemployment_insurance, w2_wages: @tax_information.w2_wages } }
    end

    assert_redirected_to tax_information_url(TaxInformation.last)
  end

  test "should show tax_information" do
    get tax_information_url(@tax_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_information_url(@tax_information)
    assert_response :success
  end

  test "should update tax_information" do
    patch tax_information_url(@tax_information), params: { tax_information: { capital_gains: @tax_information.capital_gains, self_employment: @tax_information.self_employment, unemployment_insurance: @tax_information.unemployment_insurance, w2_wages: @tax_information.w2_wages } }
    assert_redirected_to tax_information_url(@tax_information)
  end

  test "should destroy tax_information" do
    assert_difference('TaxInformation.count', -1) do
      delete tax_information_url(@tax_information)
    end

    assert_redirected_to tax_informations_url
  end
end

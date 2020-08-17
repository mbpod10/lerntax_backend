require "application_system_test_case"

class TaxInformationsTest < ApplicationSystemTestCase
  setup do
    @tax_information = tax_informations(:one)
  end

  test "visiting the index" do
    visit tax_informations_url
    assert_selector "h1", text: "Tax Informations"
  end

  test "creating a Tax information" do
    visit tax_informations_url
    click_on "New Tax Information"

    fill_in "Capital gains", with: @tax_information.capital_gains
    fill_in "Self employment", with: @tax_information.self_employment
    fill_in "Unemployment insurance", with: @tax_information.unemployment_insurance
    fill_in "W2 wages", with: @tax_information.w2_wages
    click_on "Create Tax information"

    assert_text "Tax information was successfully created"
    click_on "Back"
  end

  test "updating a Tax information" do
    visit tax_informations_url
    click_on "Edit", match: :first

    fill_in "Capital gains", with: @tax_information.capital_gains
    fill_in "Self employment", with: @tax_information.self_employment
    fill_in "Unemployment insurance", with: @tax_information.unemployment_insurance
    fill_in "W2 wages", with: @tax_information.w2_wages
    click_on "Update Tax information"

    assert_text "Tax information was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax information" do
    visit tax_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax information was successfully destroyed"
  end
end

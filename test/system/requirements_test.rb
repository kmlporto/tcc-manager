require "application_system_test_case"

class RequirementsTest < ApplicationSystemTestCase
  setup do
    @requirement = requirements(:one)
  end

  test "visiting the index" do
    visit requirements_url
    assert_selector "h1", text: "Requirements"
  end

  test "creating a Requirement" do
    visit requirements_url
    click_on "New Requirement"

    fill_in "Aluno", with: @requirement.aluno_id
    fill_in "Banca", with: @requirement.banca_id
    fill_in "Dataapresentacao", with: @requirement.dataApresentacao
    fill_in "Documento", with: @requirement.documento_id
    fill_in "Nota", with: @requirement.nota
    fill_in "Orientador", with: @requirement.orientador_id
    fill_in "Status", with: @requirement.status
    fill_in "Type", with: @requirement.type
    click_on "Create Requirement"

    assert_text "Requirement was successfully created"
    click_on "Back"
  end

  test "updating a Requirement" do
    visit requirements_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @requirement.aluno_id
    fill_in "Banca", with: @requirement.banca_id
    fill_in "Dataapresentacao", with: @requirement.dataApresentacao
    fill_in "Documento", with: @requirement.documento_id
    fill_in "Nota", with: @requirement.nota
    fill_in "Orientador", with: @requirement.orientador_id
    fill_in "Status", with: @requirement.status
    fill_in "Type", with: @requirement.type
    click_on "Update Requirement"

    assert_text "Requirement was successfully updated"
    click_on "Back"
  end

  test "destroying a Requirement" do
    visit requirements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requirement was successfully destroyed"
  end
end

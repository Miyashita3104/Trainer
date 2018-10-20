require "application_system_test_case"

class TrainerKnowledgesTest < ApplicationSystemTestCase
  setup do
    @trainer_knowledge = trainer_knowledges(:one)
  end

  test "visiting the index" do
    visit trainer_knowledges_url
    assert_selector "h1", text: "Trainer Knowledges"
  end

  test "creating a Trainer knowledge" do
    visit trainer_knowledges_url
    click_on "New Trainer Knowledge"

    fill_in "Script", with: @trainer_knowledge.script
    fill_in "Title", with: @trainer_knowledge.title
    click_on "Create Trainer knowledge"

    assert_text "Trainer knowledge was successfully created"
    click_on "Back"
  end

  test "updating a Trainer knowledge" do
    visit trainer_knowledges_url
    click_on "Edit", match: :first

    fill_in "Script", with: @trainer_knowledge.script
    fill_in "Title", with: @trainer_knowledge.title
    click_on "Update Trainer knowledge"

    assert_text "Trainer knowledge was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainer knowledge" do
    visit trainer_knowledges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainer knowledge was successfully destroyed"
  end
end

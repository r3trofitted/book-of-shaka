require "application_system_test_case"

class CharacterSheetsTest < ApplicationSystemTestCase
  test "interacting with the character sheet" do
    visit "/characters/#{ActiveRecord::FixtureSet.identify :jorund}"

    assert_content "Sleepless No"
    click_on "Add the Sleepless condition", visible: :all
    assert_content "Sleepless Yes"
    assert_button "Remove the Sleepless condition", visible: :all
  end
end

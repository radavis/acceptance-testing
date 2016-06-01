require "spec_helper" # or
# require "rails_helper"

feature "songs", focus: true do

  # User Story
  # ----------
  # As a user
  # I want add a song
  # So that I can check it out later

  # Acceptance Criteria
  # -------------------
  # * I must enter a title
  # * I must enter the artist name
  # * I must enter the albumn name
  # * I must enter the year
  # * I must enter a link to the song

  before { Song.reset_csv }

  context "create" do
    scenario "user creates a song" do
      visit "/"
      click_on "Add Song"

      fill_in "Title", with: "Fell in Love With a Girl"
      fill_in "Artist", with: "White Stripes"
      fill_in "Album", with: "White Blood Cells"
      fill_in "Year", with: "2001"
      fill_in "URL", with: "https://www.youtube.com/watch?v=fTH71AAxXmM"
      click_on "Submit"

      expect(page).to have_content "Fell in Love With a Girl"
    end
  end

  xcontext "pending specs" do
    context "read" do
      scenario "user views a song" do

      end
    end

    context "update" do
      scenario "user edits a song" do

      end
    end

    context "delete" do
      scenario "user deletes a song" do

      end
    end
  end
end

describe Import do
  let(:leamington_filename) { "test_club.xlsx" }
  let(:import) { Import.new(leamington_filename) }

  context "#club" do
    it "creates a club from the xlsx file" do
      expected_club_name = "Leamington FC"

      import.club

      expect(Club.all.count).to eq 1
      expect(Club.first.name).to eq expected_club_name
    end

    it "creates the correct number of players" do
      expected_number_of_players = 18

      import.club

      expect(Player.all.count).to eq expected_number_of_players
    end

    it "creates players with the expected first and last name" do
      expected_first_name = "Colby"
      expected_last_name = "Bishop"

      import.club

      expect(Player.first.first_name).to eq expected_first_name
      expect(Player.first.last_name).to eq expected_last_name
    end

    it "creates an abilities object for the player" do
      import.club

      expect(Player.first.abilities.persisted?).to eq true
    end

    it "persists player ability attributes" do
      expected_acceleration = 11
      expected_vision = 9

      import.club

      expect(Player.first.abilities.acceleration).to eq expected_acceleration
      expect(Player.first.abilities.vision).to eq expected_vision
    end
  end
end

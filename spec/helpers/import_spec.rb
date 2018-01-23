describe Import do
  let(:leamington_filename) { "test_club.xlsx" }
  let(:import) { Import.new(leamington_filename) }

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
end

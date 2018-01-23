describe Import do
  it "creates a club from the xlsx file" do
    leamington_filename = "test_club.xlsx"
    expected_club_name = "Leamington FC"

    import = Import.new(leamington_filename)
    import.club

    expect(Club.all.count).to eq 1
    expect(Club.first.name).to eq expected_club_name
  end
end

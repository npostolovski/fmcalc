describe Import do
  it "creates a club from the xlsx file" do
    leamington_filename = "test_club.xlsx"

    Import.club(leamington_filename)

    expect(Club.all.count).to eq 1
    expect(Club.first.name).to eq "Leamington"
  end
end

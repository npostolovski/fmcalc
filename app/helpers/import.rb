require 'roo'
require_relative '../models/club.rb'

class Import
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def club
    filepath = File.expand_path("tmp/import/#{filename}")
    xlsx = Roo::Spreadsheet.open(filepath)
    club_name = xlsx.sheet(0).row(1)[0]
    player_club = Club.create(name: club_name)

    xlsx.each_row_streaming(offset: 2) do |row|
      name = row[0].to_s.split
      player_abilities = Abilities.new

      player = Player.create(
        first_name: name[0],
        last_name: name[1],
        club_id: player_club.id
      )

      player_abilities.one_on_ones = row[1].value.to_i
      player_abilities.acceleration = row[2].value.to_i
      player_abilities.aerial_ability = row[3].value.to_i
      player_abilities.agility = row[4].value.to_i
      player_abilities.anticipation = row[5].value.to_i
      player_abilities.bravery = row[6].value.to_i
      player_abilities.balance = row[7].value.to_i
      player_abilities.command_of_area = row[8].value.to_i
      player_abilities.composure = row[9].value.to_i
      player_abilities.communication = row[10].value.to_i
      player_abilities.corners = row[11].value.to_i
      player_abilities.concentration = row[12].value.to_i
      player_abilities.crossing = row[13].value.to_i
      player_abilities.decisions = row[14].value.to_i
      player_abilities.determination = row[15].value.to_i
      player_abilities.dribbling = row[16].value.to_i
      player_abilities.eccentricity = row[17].value.to_i
      player_abilities.finishing = row[18].value.to_i
      player_abilities.first_touch = row[19].value.to_i
      player_abilities.flair = row[20].value.to_i
      player_abilities.free_kicks = row[21].value.to_i
      player_abilities.handling = row[22].value.to_i
      player_abilities.heading = row[23].value.to_i
      player_abilities.jumping_reach = row[24].value.to_i
      player_abilities.kicking = row[25].value.to_i
      player_abilities.leadership = row[26].value.to_i
      player_abilities.long_shots = row[27].value.to_i
      player_abilities.long_throws = row[28].value.to_i
      player_abilities.marking = row[29].value.to_i
      player_abilities.natural_fitness = row[30].value.to_i
      player_abilities.off_the_ball = row[31].value.to_i
      player_abilities.passing = row[32].value.to_i
      player_abilities.pace = row[33].value.to_i
      player_abilities.positioning = row[34].value.to_i
      player_abilities.punching = row[35].value.to_i
      player_abilities.reflexes = row[36].value.to_i
      player_abilities.rushing_out = row[37].value.to_i
      player_abilities.stamina = row[38].value.to_i
      player_abilities.strength = row[39].value.to_i
      player_abilities.tackling = row[40].value.to_i
      player_abilities.teamwork = row[41].value.to_i
      player_abilities.technique = row[42].value.to_i
      player_abilities.technique = row[43].value.to_i
      player_abilities.throwing = row[44].value.to_i
      player_abilities.vision = row[45].value.to_i
      player_abilities.workrate = row.last.value.to_i

      player_abilities.update_attributes(player_id: player.id)
      player.update_attributes(abilities_id: player_abilities.id)

      player_abilities.save
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


station = Station.create!(name: "秋葉原")

["京浜東北線", "山手線", "総武・中央線各駅停車"].each do |line_name|
  line = Line.create!(name: line_name)
  LinesStation.create!(line_id: line.id, station_id: station.id)
end


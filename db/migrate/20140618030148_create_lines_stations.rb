class CreateLinesStations < ActiveRecord::Migration
  def change
    create_table :lines_stations do |t|
      t.references :station, null: false
      t.references :line, null: false

      t.timestamps
    end
  end
end

class CreateTourBusAnnouncements < ActiveRecord::Migration
  def change
    create_table :tour_bus_announcements do |t|
      t.text :body
      t.string :video
      t.timestamps null: false
    end
  end
end

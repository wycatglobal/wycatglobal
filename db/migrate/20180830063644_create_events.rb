class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :event_body
      t.date :event_date
      t.time :event_time
      t.string :event_location

      t.timestamps
    end
  end
end

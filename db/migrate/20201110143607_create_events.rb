class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.text :category
      t.datetime :start_time

      t.timestamps
    end
  end
end

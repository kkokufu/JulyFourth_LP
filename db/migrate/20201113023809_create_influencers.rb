class CreateInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :influencers do |t|
      t.string :event_name
      t.string :account
      t.string :category

      t.timestamps
    end
  end
end

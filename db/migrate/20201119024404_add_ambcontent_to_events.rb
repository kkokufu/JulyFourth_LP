class AddAmbcontentToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :amb_content1, :string
    add_column :events, :amb_content2, :string
  end
end

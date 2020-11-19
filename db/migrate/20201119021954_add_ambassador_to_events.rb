class AddAmbassadorToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :amb_name1, :string
    add_column :events, :amb_name2, :string
    add_column :events, :amb_img1, :string
    add_column :events, :amb_img2, :string
  end
end

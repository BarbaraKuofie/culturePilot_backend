class CreateArtpieces < ActiveRecord::Migration[6.0]
  def change
    create_table :artpieces do |t|
      t.string :title
      t.string :image
      t.string :audio
      t.string :details
      t.string :artist
      t.string :location
      t.string :year_created
      t.integer :category_id
      t.integer :tour_id

      t.timestamps
    end
  end
end

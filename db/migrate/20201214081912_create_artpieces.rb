class CreateArtpieces < ActiveRecord::Migration[6.0]
  def change
    create_table :artpieces do |t|
      t.string :name
      t.string :image
      t.string :audio
      t.string :details
      t.string :artist
      t.string :location
      t.string :year_created
      t.string :fun_facts
      t.integer :category_id
      t.integer :collection_id

      t.timestamps
    end
  end
end

class CreateArtipieces < ActiveRecord::Migration[6.0]
  def change
    create_table :artipieces do |t|
      t.string :name
      t.string :image1
      t.string :image2
      t.string :image3
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

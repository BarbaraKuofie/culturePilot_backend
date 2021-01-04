class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :cover_image
      t.string :terms
      t.string :user_id

      t.timestamps
    end
  end
end

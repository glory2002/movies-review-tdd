class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image
      t.references :cateogry

      t.timestamps null: false
    end
  end
end

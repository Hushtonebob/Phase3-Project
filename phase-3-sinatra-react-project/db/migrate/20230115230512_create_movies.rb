class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :genre_id
      t.integer :released_year_id
    end
  end
end

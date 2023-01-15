class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :genre_id
      t.integer :released_year_id
      t.boolean :has_movie
      t.integer :movie_id
    end
  end
end

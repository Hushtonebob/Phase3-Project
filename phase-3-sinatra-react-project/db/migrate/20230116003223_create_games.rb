class CreateGames < ActiveRecord::Migration[6.1]
  def change

    create_table :games do |t|
      t.string :title
      t.integer :genre_id
      t.integer :platform_id
      t.integer :year
    end

  end
end

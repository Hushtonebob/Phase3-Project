class CreateReleasedYears < ActiveRecord::Migration[6.1]
  def change
    create_table :released_years do |t|
      t.integer :year
    end
  end
end

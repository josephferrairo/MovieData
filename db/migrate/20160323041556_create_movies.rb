class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, limit: 50
      t.integer :year, limit: 4
      t.string :synopsis
      t.string :cast

      t.timestamps null: false
    end
  end
end

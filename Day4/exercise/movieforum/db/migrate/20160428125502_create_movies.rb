class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.text :poster
      t.integer :year
      t.text :synopsis

      t.timestamps null: false
    end
  end
end

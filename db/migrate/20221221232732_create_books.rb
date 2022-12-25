class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :genre
      t.string :name
      t.string :author
      t.integer :year
      t.timestamps
    end
  end
end

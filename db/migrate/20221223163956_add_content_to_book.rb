class AddContentToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :content, :string
  end
end

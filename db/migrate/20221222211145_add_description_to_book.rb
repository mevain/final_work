class AddDescriptionToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :description, :string
  end
end

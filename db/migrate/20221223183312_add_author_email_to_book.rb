class AddAuthorEmailToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :author_email, :string
  end
end

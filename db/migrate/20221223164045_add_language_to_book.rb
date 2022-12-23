class AddLanguageToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :language, :string
  end
end

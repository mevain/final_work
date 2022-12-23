class DropBooksTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :books
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

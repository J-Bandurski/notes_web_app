class AddIndexToNotes < ActiveRecord::Migration
  def change
    add_index :notes, :title, unique: true
  end
end

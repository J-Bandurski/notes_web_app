class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :url

      t.timestamps null: false
    end
  end
end

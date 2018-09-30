class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :starts
      t.string :title
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end

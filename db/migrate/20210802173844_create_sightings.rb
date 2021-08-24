class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.string :city
      t.string :comments
      t.string :date_posted
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end

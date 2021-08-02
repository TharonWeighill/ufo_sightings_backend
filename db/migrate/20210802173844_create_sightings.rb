class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.float :date_time
      t.string :city
      t.string :state
      t.string :country
      t.string :shape
      t.string :comments
      t.float :date_posted
      t.float :latitude
      t.string :longitutde

      t.timestamps
    end
  end
end

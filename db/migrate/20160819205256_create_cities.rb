class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.string :city_website

      t.timestamps null: false
    end
  end
end
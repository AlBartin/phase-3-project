class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :common_name
      t.string :image_url
      t.belongs_to :type
      t.belongs_to :family
      t.belongs_to :light
      t.belongs_to :water
      t.belongs_to :soil
    end
  end
end

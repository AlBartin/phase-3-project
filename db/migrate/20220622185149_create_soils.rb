class CreateSoils < ActiveRecord::Migration[6.1]
  def change
    create_table :soils do |t|
      t.string :name
      t.text :ingredients
      t.text :amounts
    end
  end
end

class CreateLights < ActiveRecord::Migration[6.1]
  def change
    create_table :lights do |t|
      t.string :name
      t.integer :amount
    end
  end
end

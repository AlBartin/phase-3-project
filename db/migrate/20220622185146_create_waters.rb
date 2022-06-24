class CreateWaters < ActiveRecord::Migration[6.1]
  def change
    create_table :waters do |t|
      t.string :name
      t.integer :amount
    end
  end
end

class CreateJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
      t.string :title
      t.text :content
      t.belongs_to :user
      t.belongs_to :plant
      t.datetime :created_at
    end
  end
end

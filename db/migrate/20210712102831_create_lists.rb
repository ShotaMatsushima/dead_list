class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.text :content

      t.timestamps
    end
  end
end

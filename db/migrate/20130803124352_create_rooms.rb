class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :city
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end

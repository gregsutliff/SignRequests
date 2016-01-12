class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :requester
      t.integer :location
      t.string :item_number
      t.string :description
      t.boolean :fulfilled?
      t.datetime :fulfilled_on

      t.timestamps null: false
    end
  end
end

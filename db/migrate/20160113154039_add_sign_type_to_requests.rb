class AddSignTypeToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :sign_type, :string
  end
end

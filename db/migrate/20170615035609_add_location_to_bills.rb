class AddLocationToBills < ActiveRecord::Migration
  def change
    add_column :bills, :location, :string
  end
end

class AddExpiredToItem < ActiveRecord::Migration
  def change
    add_column :items, :expires, :datetime
  end
end

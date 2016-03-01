class AddColumnToCatRentals < ActiveRecord::Migration
  def change
    add_column :cat_rental_requests, :status, :string
      change_column_default(:cat_rental_requests, :status, 'PENDING')
  end
end

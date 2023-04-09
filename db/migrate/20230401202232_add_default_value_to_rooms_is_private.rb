class AddDefaultValueToRoomsIsPrivate < ActiveRecord::Migration[7.0]
  def change
    change_column :rooms, :is_private, :boolean, default: true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25) :rooms, :column, :boolean
  end
end

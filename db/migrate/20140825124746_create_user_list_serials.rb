class CreateUserListSerials < ActiveRecord::Migration

  def self.up
    create_table :user_list_serials, id: false do |t|
    t.references :user_list
    t.references :serial
  end

  add_index :user_list_serials, [:serial_id, :user_list_id]
  add_index :user_list_serials, [:user_list_id, :serial_id]
  end

  def self.down
    drop_table :user_lists_serials
  end
end

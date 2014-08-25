class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :title
      t.text :link
      t.timestamps
    end
  end
end

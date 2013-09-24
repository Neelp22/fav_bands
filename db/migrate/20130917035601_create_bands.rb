class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
    	t.string :name
    	t.integer :num_albums
    	t.string :lead_singer

      t.timestamps
    end
  end
end


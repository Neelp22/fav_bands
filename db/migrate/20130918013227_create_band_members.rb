class CreateBandMembers < ActiveRecord::Migration
  def change
    create_table :band_members do |t|
    	t.string :name
    	t.integer :age

    	t.belongs_to :band

      t.timestamps
    end
  end
end

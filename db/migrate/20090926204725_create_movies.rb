class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
     t.column :title, :string, :null => false 
 t.column :date, :date, :null => false 
 t.column :time, :time, :null => false 
 t.column :duration, :integer, :null => false 
 t.column :room_id, :integer, :null => false 
      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end

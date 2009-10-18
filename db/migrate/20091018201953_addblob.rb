class Addblob < ActiveRecord::Migration
  def self.up
add_column :movies, :photo_file_name, :string
execute 'ALTER TABLE  movies ADD COLUMN photo_file LONGBLOB'
    execute 'ALTER TABLE movies ADD COLUMN photo_small_file LONGBLOB'
    execute 'ALTER TABLE movies ADD COLUMN photo_thumb_file LONGBLOB'

  end

  def self.down
remove_column :movies, :photo_file
    remove_column :movies, :photo_small_file
    remove_column :movies, :photo_thumb_file

  end
end

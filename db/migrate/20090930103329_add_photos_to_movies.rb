class AddPhotosToMovies < ActiveRecord::Migration
  def self.up
   add_column :movies, :photo_file_name, :string
    add_column :movies, :photo_content_type, :string
    add_column :movies, :photo_file_size, :integer

  end

  def self.down
 remove_column :movies, :photo_file_name
    remove_column :movies, :photo_content_type
    remove_column :movies, :photo_file_size

  end
end

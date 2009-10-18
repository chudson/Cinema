class Movie < ActiveRecord::Base
belongs_to :room
validates_presence_of :title, :date,:time ,:duration,:photo,:room_id
validates_numericality_of :room_id , :duration
validates_format_of :photo_file_name,:with => %r{\.(gif|jpg|jpeg|png)$}i,
:message => "must be a URL for a GIF, JPG,JPEG or PNG image"
# Paperclip
has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }
	
has_attached_file :photo, :default_url => "Missing photo Please add one"
protected
def validate
errors.add(:duration, "should be at least 60 minutes" ) if duration.nil? || duration < 60
errors.add(:rooms_id, "should be at least 1" ) if room_id.nil? || room_id < 1
errors.add(:date, "should be at least tomorrow day" ) if Date.today > date 
end
end

class Movie < ActiveRecord::Base
belongs_to :room
validates_presence_of :title, :date,:time ,:duration,:picture_url,:room_id
validates_numericality_of :room_id , :duration
validates_format_of :picture_url,
:with => %r{\.(gif|jpg|jpeg|png)$}i,
:message => "must be a URL for a GIF, JPG, or PNG image"
protected
def validate
errors.add(:duration, "should be at least 60 minutes" ) if duration.nil? || duration < 60
errors.add(:rooms_id, "should be at least 1" ) if room_id.nil? || room_id < 1


end
end

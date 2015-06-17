class Lesson < ActiveRecord::Base
  belongs_to :section

  def previous
    @previous_lesson = Lesson.where("id < ?", id).last
  end

  def next
    @next_lesson = Lesson.where("id > ?", id).first
  end
end

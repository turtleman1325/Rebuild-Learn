class Lesson < ActiveRecord::Base
  def previous
    @lesson = Lesson.where("id < ?", id).last
  end

  def next
    @lesson = Lesson.where("id > ?", id).first
  end
end

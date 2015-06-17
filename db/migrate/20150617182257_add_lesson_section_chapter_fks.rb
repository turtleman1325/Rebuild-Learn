class AddLessonSectionChapterFks < ActiveRecord::Migration
  def change
    change_table :lessons do |t|
      t.references :section
    end
    change_table :sections do |t|
      t.references :chapter
    end
  end

end

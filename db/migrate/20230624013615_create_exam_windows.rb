class CreateExamWindows < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_windows do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :exams, foreign_key: true

      t.timestamps
    end
  end
end
